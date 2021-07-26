import { mount } from '@vue/test-utils'
import Logo from '@/components/Logo.vue'

describe('Logo', () => {
  test('コンポーネントが存在する', () => {
    const wrapper = mount(Logo)
    expect(wrapper.exists()).toBeTruthy()
  })
})
