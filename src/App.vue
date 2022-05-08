<template>
  <header class="container mt-10 d-flex align-items-center justify-content-between">
    <h1><a href="#">
        <img
          src="https://raw.githubusercontent.com/hexschool/webLayoutTraining1st/master/student-week1/logo-all-dark.svg"
          alt="logo-all-dark" class="logo-all-dark">
      </a>
    </h1>
    <div class="d-flex nav-list align-items-center">
      <ul class="d-flex justify-content-between">
        <a v-for="list in navList" :key="list.name" :href="list.link" class="d-block p-1">
          <li>{{ list.name }}</li>
        </a>
      </ul>
      <div>
        <img
          src="https://github.com/hexschool/webLayoutTraining1st/blob/master/student-week1/shopping_cart.png?raw=true"
          alt="shopping-cart" class="shopping-cart">
      </div>
    </div>
  </header>
  <section class="container mt-8">
    <img class="banner"
      src="https://github.com/hexschool/webLayoutTraining1st/blob/master/student-week1/banner.png?raw=true"
      alt="banner">
  </section>
  <section class="container mt-15">
    <div class="row">
      <div class="col-4 mr-5">
        <h2 class="category-title">甜點類別</h2>
        <ul class="category">
          <a v-for="category in categories" :key="category.name" :href="category.link">
            <li>{{ category.name }}</li>
          </a>
        </ul>
      </div>
      <div class="col-8">
        <ul class="product-list">
          <li class="product" v-for="product in productList" :key="product.img">
            <div class="produst-img">
              <img
                src="https://github.com/hexschool/webLayoutTraining1st/blob/master/student-week1/favorite_border.png?raw=true"
                alt="favorite-border" class="favorite-border">
              <img :src="product.img" :alt="product.name">
              <span class="mark">
                本日精選
              </span>
            </div>
            <div class="d-flex align-content-center justify-content-between product-info">
              <h3 class="product-name">{{ product.name }}</h3>
              <p class="product-price">{{ product.price }}</p>
            </div>
            <button class="shop-cart">加入購物車</button>
          </li>
        </ul>
      </div>
    </div>
  </section>
  <div class="container mt-8 mb-15">
    <div class="row">
      <div class="col d-flex flex-row flex-nowrap justify-content-end">
        <a href="#" class="arrow d-block border p-5">
          <img src="https://github.com/hexschool/webLayoutTraining1st/blob/master/student-week1/arrow_left.png?raw=true"
            alt="left-arrow">
        </a>
        <ul class="d-flex">
          <a href="#" class="p-5 border d-block">
            <li>1</li>
          </a>
          <a href="#" class="p-5 border d-block">
            <li>2</li>
          </a>
          <a href="#" class="p-5 border d-block">
            <li>3</li>
          </a>
        </ul>
        <a href="#" class="arrow d-block border border-right p-5"><img
            src="https://github.com/hexschool/webLayoutTraining1st/blob/master/student-week1/arrow_right.png?raw=true"
            alt="right-arrow" srcset=""></a>
      </div>
    </div>
  </div>
</template>

<script setup>
import { reactive } from 'vue'

const categories = reactive([
  {
    name: '所有甜點（48）',
    link: '#'
  },
  {
    name: '本日精選（10）',
    link: '#'
  },
  {
    name: '人氣推薦（26）',
    link: '#'
  },
  {
    name: '新品上市（12）',
    link: '#'
  }
])

const navList = reactive([
  {
    name: '首頁',
    link: '#'
  },
  {
    name: '甜點',
    link: '#'
  },
  {
    name: '登入',
    link: '#'
  }
])

const productList = reactive([
  {
    name: '焦糖馬卡龍',
    price: 'NT$ 450',
    img: 'https://github.com/hexschool/webLayoutTraining1st/blob/master/student-week1/p-1.png?raw=true'
  },
  {
    name: '焦糖馬卡龍',
    price: 'NT$ 450',
    img: 'https://github.com/hexschool/webLayoutTraining1st/blob/master/student-week1/p-2.png?raw=true'
  },
  {
    name: '焦糖馬卡龍',
    price: 'NT$ 450',
    img: 'https://github.com/hexschool/webLayoutTraining1st/blob/master/student-week1/p-3.png?raw=true'
  },
  {
    name: '焦糖馬卡龍',
    price: 'NT$ 450',
    img: 'https://github.com/hexschool/webLayoutTraining1st/blob/master/student-week1/p-4.png?raw=true'
  },
  {
    name: '焦糖馬卡龍',
    price: 'NT$ 450',
    img: 'https://github.com/hexschool/webLayoutTraining1st/blob/master/student-week1/p-5.png?raw=true'
  },
  {
    name: '焦糖馬卡龍',
    price: 'NT$ 450',
    img: 'https://github.com/hexschool/webLayoutTraining1st/blob/master/student-week1/p-6.png?raw=true'
  }
])
</script>

<style lang="scss" scoped>
.logo-all-dark {
  height: 40px;
}

.shopping-cart {
  width: 24px;
  height: 24px;
}

.nav-list {
  & ul {
    margin-right: 80px;
    min-width: 215px;
  }
}

.category-title {
  width: 100%;
  padding: 1rem 4rem;
  text-align: center;
  font-size: 20px;
  border-top: 1px solid $secondary;
  border-right: 1px solid $secondary;
  border-left: 1px solid $secondary;
  color: $secondary;
  background-color: $current;
}

.category {
  display: flex;
  flex-direction: column;
  align-items: center;
  text-align: center;
  font-size: 20px;
  border: 1px solid $secondary;

  & a {
    width: 100%;

    &:hover {
      background-color: $secondary;
    }
  }

  & li {
    padding: 1rem 4rem;
    border-bottom: 1px solid $secondary;
  }
}

.product-list {
  display: flex;
  flex-wrap: wrap;
  text-align: center;
  justify-content: space-between;

  & li {
    border: 1px solid $secondary;
  }
}

.product {
  margin-bottom: 1.25rem;
}

.product-name {
  padding: 14px 33px;
}

.product-price {
  padding: 14px 20px;
  font-weight: bold;
  border-left: 1px solid $secondary;
}

.produst-img {
  position: relative;
}

.favorite-border {
  width: 24px;
  height: 24px;
  position: absolute;
  top: 20px;
  right: 20px;
}

.mark {
  position: absolute;
  top: 0px;
  left: 20px;
  display: flex;
  flex-direction: column;
  flex-wrap: nowrap;
  max-width: 36px;
  padding: 10px;
  color: $secondary;
  background-color: $current;
}

.shop-cart {
  width: 100%;
  padding: 1rem 5.625rem;
  font-weight: bold;
  background-color: $secondary;
}
</style>