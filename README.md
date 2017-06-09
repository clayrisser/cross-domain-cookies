# cross-domain-cookies

Set cookies on other domains

## Usage

```html
<img src="set-cookie.yourdomain1.com?name=some-cookie&value=some-value" style="hidden:true" />
```

| Query Params | Default Value  |
| ------------ | -------------- |
| name         | `""`           |
| value        | `""`           |
| domain       | Current domain |
| httpOnly     | `true`         |
| expires      |  Session       |
| path         |  `"/"`         |
| secure       | `true`         |
