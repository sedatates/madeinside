<template>
  <div class="row parentFooter justify-content-center">
    <div class="col-lg-7 col-9 d-flex flex-column justify-content-between">
      <div class="item1 row justify-content-center">
        <div
          class="
            col-12 col-lg-3
            d-flex
            justify-content-center
            align-self-start
            pt-5
          "
        >
          <img
            class="img-fluid logo_footer"
            :src="require('../assets/' + 'Logo.png')"
            alt=""
          />
        </div>
        <div class="col-6 col-lg-3 pt-5">
          <ul class="footer_li pt-0 text-center">
            <li>ACCUEL</li>
            <li>MES SERVICES</li>
            <li>A PROPOS</li>
            <li>MES CREATIONS</li>
            <li>MES ARTICLE</li>
            <li>CONTACT</li>
          </ul>
        </div>
        <div class="col-6 col-lg-3 pt-5">
          <ul class="footer_li1 pt-0 text-center">
            <li>HOME STAGING</li>
            <li>RENOVATION</li>
            <li>DECORATION</li>
            <li>AGENTECEMENT</li>
          </ul>
        </div>
        <div class="col-12 col-lg-3 pt-5">
          <h2 class="text-center">Mes réseaux :</h2>
          <ul class="d-flex footer_li2">
            <li class="footer_li2_items">
              <img :src="require('../assets/' + 'twitter.png')" />
            </li>
            <li class="footer_li2_items">
              <img :src="require('../assets/' + 'facebook.png')" />
            </li>
            <li class="footer_li2_items">
              <img :src="require('../assets/' + 'instagram.png')" />
            </li>
            <li class="footer_li2_items">
              <img :src="require('../assets/' + 'houzz.png')" />
            </li>
          </ul>
        </div>
      </div>

      <div class="item2 d-flex justify-content-between">
        <a href="" style="text-decoration: none; color: white"
          >Politique de confidentialité Mention légale - Plan du site</a
        >
        <a href="" style="text-decoration: none; color: white; margin-top: 10px"
          >made with love ❤</a
        >
      </div>
    </div>
  </div>
</template>

<style >
@media only screen and (max-width: 800px) {
  .item2 {
    padding-inline: 5rem;
    display: flex !important;
    text-align: center;
    flex-direction: column !important;
  }
}

.footer_li1 {
  font-size: 16px;
  list-style: none;
}
.footer_li {
  font-size: 16px;
  list-style: none;
  font-weight: 600;
}
.footer_li2 {
  list-style: none;
  justify-content: center;
}
.footer_li2_items {
  display: flex;
  align-items: center;
  justify-content: center;
  margin: 0.2rem;
  background-color: white;
  height: 36px;
  width: 36px;
}
.parentFooter {
  color: white;
  margin-top: 100px;
  height: 100%;
  background-color: black;
}
.logo_footer {
  object-fit: contain;
  max-width: 165px;
}
</style>