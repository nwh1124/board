const articleList = [];

let params = location.search.substr(location.search.indexOf("?") + 1);
let searchTag = params.substr(4);

$.get(
	'article_tag.json',
	{},
	function(data) {
		data.forEach((row, index) => {
  		
      if(row.body == this.searchTags){       
	        const articleWithTag = {
			id: row.id,
			regDate: row.regDate,
			writer: row.extra__writer,
			title: row.title,
			body: row.body,
			hit: row.hit,
			likesCount: row.likesCount,
			commentsCount: row.commentsCount,
	        tags: row.tags
        } 
			articleList.push(articleWithTags);
      }

		});
	},
	'json'
);

new Vue({
  el: "#articleTagList",
  data: {
    articleList:articleList
  },
  computed: {
    filterKey:function() {
      return this.searchTag;
    },
    filtered: function() {
      
      return this.articleList.filter((row) => {
        if ( row.tags.indexOf(this.filterKey) > -1 ) {
          return true;
        }
      });
    }
  }
});