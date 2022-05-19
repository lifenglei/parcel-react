import React from 'react';
import ReactDom from 'react-dom';
const App = () => <div>hello parcel created by lifenglei 增加eslint</div>;
function show () {
  let sss2 = 'name';
  console.log(sss2);
}
show();
ReactDom.render(<App />, document.getElementById('app'));
