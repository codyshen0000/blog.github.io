---
layout: post
title: "深入理解Vue3 Composition API及其最佳实践"
date: 2023-04-15 14:30:00 +0800
categories: 前端开发
tags: Vue3 JavaScript 前端框架 Composition-API
---

## Vue3 Composition API简介

Vue3的Composition API是Vue框架的一次重大升级，它为我们提供了一种全新的组织组件逻辑的方式。不同于Vue2中的Options API（将代码按照options分散到data、methods、computed等选项中），Composition API允许我们根据逻辑关注点组织代码，大大提高了代码的可读性和可复用性。

## 为什么需要Composition API？

在大型项目中，Vue2的Options API存在几个明显的问题：

1. **逻辑分散**：相关联的逻辑被分散到不同的options中，导致代码跳转阅读困难
2. **复用性差**：逻辑复用主要依赖mixins，但mixins容易导致命名冲突和数据来源不清晰
3. **TypeScript支持有限**：Options API对TypeScript的类型推导支持不够友好

Composition API很好地解决了这些问题，让我们能够：

- 按照逻辑关注点组织代码
- 通过函数封装和复用逻辑（Composables）
- 获得更好的TypeScript支持

## 核心API详解

### setup函数

`setup`是Composition API的入口函数，它在组件创建时执行，早于生命周期钩子函数：

```js
export default {
  setup(props, context) {
    // 组件逻辑
    return {
      // 返回要暴露给模板的数据和方法
    }
  }
}
```

### 响应式API

#### ref和reactive

Vue3提供了两种创建响应式数据的方式：

```js
import { ref, reactive } from 'vue'

// 使用ref
const count = ref(0)
console.log(count.value) // 访问ref值需要.value

// 使用reactive
const state = reactive({
  count: 0,
  message: 'Hello'
})
console.log(state.count) // 直接访问属性
```

`ref`适合处理简单数据类型，而`reactive`更适合处理对象类型的数据。

#### computed

创建基于响应式状态的计算属性：

```js
import { ref, computed } from 'vue'

const count = ref(0)
const doubleCount = computed(() => count.value * 2)
```

#### watch和watchEffect

监听响应式数据的变化：

```js
import { ref, watch, watchEffect } from 'vue'

const count = ref(0)

// 显式指定要监听的数据源
watch(count, (newValue, oldValue) => {
  console.log(`count从${oldValue}变为${newValue}`)
})

// 自动收集依赖
watchEffect(() => {
  console.log(`count的当前值为: ${count.value}`)
})
```

### 生命周期钩子

Composition API提供了一系列与Options API对应的生命周期钩子：

```js
import { 
  onMounted, 
  onUpdated, 
  onUnmounted, 
  onBeforeMount,
  onBeforeUpdate,
  onBeforeUnmount 
} from 'vue'

export default {
  setup() {
    onMounted(() => {
      console.log('组件已挂载')
    })
    
    onUnmounted(() => {
      console.log('组件已卸载')
    })
  }
}
```

## 最佳实践

### 1. 使用script setup语法糖

Vue3.2引入的`<script setup>`语法糖进一步简化了Composition API的使用：

```vue
<script setup>
import { ref, computed } from 'vue'

// 声明的变量和函数自动暴露给模板
const count = ref(0)
const doubleCount = computed(() => count.value * 2)

function increment() {
  count.value++
}
</script>

<template>
  <button @click="increment">{{ count }}</button>
  <p>Double: {{ doubleCount }}</p>
</template>
```

### 2. 使用Composables复用逻辑

将可复用的逻辑提取为独立的函数（Composable）：

```js
// useCounter.js
import { ref, computed } from 'vue'

export function useCounter(initialValue = 0) {
  const count = ref(initialValue)
  const doubleCount = computed(() => count.value * 2)

  function increment() {
    count.value++
  }

  function decrement() {
    count.value--
  }

  return {
    count,
    doubleCount,
    increment,
    decrement
  }
}
```

在组件中使用：

```vue
<script setup>
import { useCounter } from './composables/useCounter'

const { count, doubleCount, increment, decrement } = useCounter(10)
</script>
```

### 3. 合理使用ref和reactive

- 对于简单值类型（字符串、数字、布尔值），使用`ref`
- 对于复杂的对象结构，使用`reactive`
- 避免将`reactive`对象解构，这会丢失响应性
- 使用`toRefs`将`reactive`对象的属性转换为独立的`ref`

### 4. 优先使用props和emits进行组件通信

## 总结

Composition API为Vue开发带来了更高的灵活性和可维护性，特别适合大型应用的开发。通过组织逻辑关注点、提取可复用的Composables，我们可以构建出更加清晰、可维护的代码库。

在实际项目中，我们可以根据需要选择使用Options API或Composition API，甚至可以在同一个项目中混合使用。不过，对于新项目，我推荐默认使用Composition API，以获得更好的代码组织和TypeScript支持。

希望本文对你理解和使用Vue3 Composition API有所帮助！