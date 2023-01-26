import { Controller } from "@hotwired/stimulus"



export default class extends Controller {
    static targets = ['followings', 'followers']
    connect() {
        console.log(this.followingsTarget)
    }
  
    showFollowers() {
      
            this.followersTarget.hidden = false
            this.followingsTarget.hidden = true

    }

    showFollowings(){
        this.followersTarget.hidden = true
        this.followingsTarget.hidden = false

    }

}
