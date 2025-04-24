# Image Block



## Profile Members Img

* Markdown

````python
<div class="user-list user-list-center">
    {% for user in members["members"] %}
        <div class="user">
            <a href="https://github.com/{{ user.login }}" target="_blank">
                <div class="avatar-wrapper">
                    <img src="https://github.com/{{ user.login }}.png" alt="{{ user.login }}'s profile picture"/>
                </div>
                <div class="title">@{{ user.login }}</div>
            </a>
        </div>
    {% endfor %}
</div>
````

* Previews

<div class="user-list user-list-center">
{% for user in members["members"] %}

<div class="user"><a href="https://github.com/{{ user.login }}" target="_blank"><div class="avatar-wrapper"><img src="https://github.com/{{ user.login }}.png"/></div><div class="title">@{{ user.login }}</div></a></div>
{% endfor %}

</div>


## Embed Image Block

* Markdown
    ````markdown
    ```html
    <p align="center">
        <a href="#"><img src="../../img/logo_dark.png#only-light" alt="ailab"></a>
        <a href="#"><img src="../../img/logo_light.png#only-dark" alt="ailab"></a>
    </p>

    ```
    ````
* Previews
 <p align="center">
    <a href="#"><img src="../../img/logo_dark.png#only-light" alt="ailab"></a>
    <a href="#"><img src="../../img/logo_light.png#only-dark" alt="ailab"></a>
</p>



