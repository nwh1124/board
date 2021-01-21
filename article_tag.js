const articleList = [];
const tags = [];

let params = location.search.substr(location.search.indexOf("?") + 1);
let searchTag = params.substr(4);

$.get(
	'article_list.json',
	{},
	function(data) {
		data.forEach((row, index) => {

			const article = {
				id: row.id,
				regDate: row.regDate,
				writer: row.extra__writer,
				title: row.title,
				body: row.body,
				hit: row.hit,
				likesCount: row.likesCount,
				commentsCount: row.commentsCount
			};

			articleList.push(article);
		});
	},
	'json'
);

$.get(
	'article_tag.json',
	{},
	function(data) {
		data.forEach((row, index) => {
  
      if(row.body == this.searchTag){       
        const tag = {
          type: row.relTypeCode,
          id: row.relId,
          body: row.body
        } 
			tags.push(tag);
      }

		});
	},
	'json'
);

new Vue({
  el: "#articleTagList",
  data: {
    articleList:articleList,
    tags:tags,
    tag:''
  },
  methods: {
    update: _.debounce(function(e){
      this.tag = e.target.value;
    }, 500)
  },
  computed: {
    filterKey:function() {
      return this.tag.id.toLowerCase();
    },
    filtered: function() {
      
      return this.articleList.filter((row) => {
        if ( row.id.toLowerCase().indexOf(this.filterKey) > -1 ) {
          return true;
        }
      });
    }
  }
});