const httpConfig = {
    serverUrl: 'http://localhost:3000/api'
};
function httpRequest(apiUrl, params) {
    return new Promise(resolve => {
        const xhr = new XMLHttpRequest();
        xhr.open("GET", httpConfig.serverUrl + apiUrl + '?' + new URLSearchParams(params).toString(), true);
        xhr.send();
        xhr.onreadystatechange = function() {
            if (xhr.readyState === 4 && xhr.status == 200) {
                const res = xhr.responseText;
                resolve(JSON.parse(res));
            }
        }
    });
}