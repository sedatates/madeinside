<template>
  <div>
    <div class="parentMenu" :class="{ opened_parentMenu: clicked }">
      <div class="menu" :class="{ opened_menu: clicked }">
        <div class="top">
          <div v-if="!clicked" @click="openCloseMenu()" class="burger_icon">
            <Burger />
          </div>
          <div v-if="clicked" @click="openCloseMenu()" class="burger_icon">
            <Closecross />
          </div>
          <div class="mail_icon">
            <Email />
          </div>
          <div class="search_icon">
            <img src="../assets/search_icon.png" />
          </div>
        </div>
        <div class="bottom">
          <span class="align-self-center"
            ><img
              :src="require('../assets/' + 'mobil-logo.png')"
              alt="mobil-logo"
          /></span>
          <span class="align-self-center line"> </span>
          <span class="search_icon_mobile">
            <img src="../assets/search_icon.png" alt="" />
          </span>
          <span
            @click="isclicked_share = !isclicked_share"
            class="mobile_openclose_share"
          >
            <img
              class="mobile_share_icon"
              src="../assets/mobile_share_icon.png"
            />
            <span
              class="share_links"
              :class="{ opened_share_links: isclicked_share }"
            >
              <img
                class="align-self-center img-fluid"
                style="height: 35px"
                src="../assets/facebook.png"
              />
              <img
                class="align-self-center img-fluid"
                style="height: 35px"
                src="../assets/twitter.png"
              />
              <img
                class="align-self-center img-fluid"
                style="height: 35px"
                src="../assets/houzz.png"
              />
            </span>
          </span>
        </div>
      </div>
      <div class="link_menu" :class="{ opened_link_menu: clicked }">
        <div class="inside_links_top">
          <span class="mobile_img">
            <img
              style="width: 255px"
              class="pt-4"
              :src="require('../assets/' + 'opened_mobile_logo.png')"
              alt="mobil-logo"
            />
          </span>
          <ul>
            <li>Accueil</li>
            <li>À propos</li>
            <li
              @click="visible = !visible"
              class="d-flex justify-content-between"
            >
              Mes services
              <span>+</span>
            </li>
            <div class="collapsable" :class="{ opened_collapsable: visible }">
              <span class="list_items">
                <li>Home staging</li>
                <li>Agencement</li>
                <li>Décoration</li>
                <li>Rénovation</li>
              </span>
            </div>
            <li>Mes articles / Blog</li>
            <li>Contact</li>
          </ul>
        </div>

        <div class="inside_links_bottom">
          Politique de confidentialité Mention légale - Plan du site
        </div>
      </div>
    </div>
    <div class="mobile_link_menu" :class="{ opened_mobile_link_menu: clicked }">
      <div class="inside_links_top">
        <span class="mobile_img">
          <img
            style="width: 255px"
            class="pt-4"
            :src="require('../assets/' + 'opened_mobile_logo.png')"
            alt="mobil-logo"
          />
        </span>
        <ul class="mt-4">
          <li>Accueil</li>
          <li>À propos</li>
          <li
            @click="visible = !visible"
            class="d-flex justify-content-between"
          >
            Mes services
            <span>+</span>
          </li>
          <div class="collapsable" :class="{ opened_collapsable: visible }">
            <span class="list_items">
              <li>Home staging</li>
              <li>Agencement</li>
              <li>Décoration</li>
              <li>Rénovation</li>
            </span>
          </div>
          <li>Mes articles / Blog</li>
          <li>Contact</li>
        </ul>
      </div>
      <div class="inside_links_bottom">
        Politique de confidentialité Mention légale - Plan du site
        <div @click="openCloseMenu()" class="mobile_close_icon">
          <Closecross />
        </div>
      </div>
    </div>
  </div>
</template>


<script>
import Burger from "./sidebar-icons/Burger.vue";
import Closecross from "./sidebar-icons/Closecross.vue";
import Email from "./sidebar-icons/Email.vue";

export default {
  data() {
    return {
      isclicked_share: false,
      clicked: false,
      visible: false,
    };
  },
  methods: {
    openCloseMenu() {
      this.clicked = !this.clicked;
    },
  },
  components: {
    Burger,
    Closecross,
    Email,
  },
};
</script>



<style >
@media only screen and (max-width: 1024px) {
  .line {
    width: 4rem !important;
    transform: rotate(0deg) !important;
    margin: 0 !important;
    margin-left: 10px !important;
  }
  .parentMenu {
    left: 0;
    bottom: 0;
    top: unset !important;
    width: 100% !important;
    height: 75px !important;
    flex-direction: row !important;
  }
  .menu {
    height: 75px !important;
    width: 100% !important;
    flex-direction: row !important;
    padding-inline: 0.5rem !important;
  }
  .opened_menu {
    z-index: 0 !important;
  }
  .link_menu {
    width: 0 !important;
  }
  .mobile_img {
    display: flex;
    align-self: center;
    justify-content: center;
  }
  .mobile_link_menu {
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    align-items: center;
    width: 100% !important;
    height: 100% !important;
    position: fixed;
    background-color: white;
    z-index: 1;
    transition: 0.3s;
    opacity: 0;
  }
  .opened_mobile_link_menu {
    visibility: visible !important;
    opacity: 1 !important;
  }
  .mobile_close_icon {
    position: absolute;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 75px;
    width: 35px;
    color: white;
    bottom: 0;
    right: 0.5rem;
  }
  .top {
    height: unset !important;
    flex-direction: row !important;
    order: 2;
  }
  .bottom {
    width: 100%;
    display: flex;
    flex-direction: row !important;
    justify-content: space-between !important;
    margin-right: 10%;
  }
  .burger_icon {
    display: flex;
    justify-content: center;
    align-items: center;
    order: 2;
  }
  .mail_icon {
    display: none;
    margin-inline: 2rem;
  }
  .search_icon {
    display: none;
  }
  .inside_links_bottom {
    margin-bottom: 4rem !important;
    text-align: left !important;
  }
  .search_icon_mobile {
    display: flex !important;
    align-items: center;
    justify-content: center;
  }
  .mobile_share_icon {
    display: flex !important;
  }
  .line {
    width: 30% !important;
    margin-left: 0px !important;
  }
  .share_links {
    position: absolute;
    bottom: 0;
    left: 50%;
    transform: translate(-50%);
    background-color: white;
    opacity: 0;
    width: 75px;
    height: 0;
    transition: 0.2s;
  }
  .opened_share_links {
    opacity: 1;
    position: absolute;
    bottom: 1rem;
    padding: 1rem;
    left: 50%;
    transform: translate(-50%);
    background-color: white;
    height: 200px !important;
  }

  .mobile_openclose_share {
    position: relative;
    height: 0;
  }
}
.share_links {
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  height: 200px;
}
.facebook {
  width: 35px;
  height: 35px;
}
.search_icon_mobile {
  display: none;
}
.mobile_share_icon {
  display: none;
}
.line {
  width: 200%;
  height: 2px;
  display: inline-block;
  background-color: gray;
  transform: rotate(90deg);
}
.mail_icon {
  margin-block: 1rem;
}
.search_icon {
  margin-block: 1rem;
}
.collapsable {
  height: 0;
  opacity: 0;
  display: flex;
  flex-direction: column;
  transition: 0.2s;
}
.opened_collapsable {
  opacity: 1;
  transition: 0.2s;
  height: 150px;
}
.mobile_link_menu {
  width: 0;
  height: 0;
  visibility: hidden;
}
.parentMenu {
  right: 0;
  width: 75px;
  height: 100%;
  position: fixed;
  z-index: 1;
  display: flex;
  transition: 0.2s;
}
.list_items {
  color: gray;
  padding-left: 20px;
  font-weight: 100;
}
.opened_parentMenu {
  width: 50%;
  height: 100%;
}
.menu {
  width: 100%;
  height: 100%;
  background-color: white;
  opacity: 1;
  z-index: 1;
  display: flex;
  align-items: center;
  flex-direction: column;
  justify-content: space-between;
  visibility: visible;
  transition: all 0.2s ease-in-out;
  padding: 1rem;
}
.opened_menu {
  right: 0;
  top: 0;
  width: 75px;
  height: 100vh;
  z-index: 1;
  display: flex;
  align-items: center;
  flex-direction: column;
  justify-content: space-between;
  visibility: visible;
}
.link_menu {
  width: 100%;
  left: 75px;
  background-color: white;
  display: flex;
  justify-content: space-between;
  flex-direction: column;
  padding-top: 5rem;
}
.opened_link_menu {
  padding-left: 20px;
  position: absolute;
  height: 100%;
  width: calc(100% - 75px);
  padding-block: 5rem;
}
.inside_links_top {
  width: 255px;
}
.inside_links_bottom {
  color: gray;
  text-align: center;
  width: 80%;
  margin-bottom: 75px;
}
.inside_links3 {
  text-align: left;
  max-width: 60%;
}
.top {
  height: 40%;
  display: flex;
  flex-direction: column;
  justify-content: flex-start;
}
.bottom {
  height: 60%;
  display: flex;
  flex-direction: column-reverse;
  justify-content: space-between;
}
ul {
  list-style: none;
}
li {
  margin-top: 0.5rem;
  font-size: 20px;
  font-weight: 400;
  text-transform: uppercase;
}
</style>