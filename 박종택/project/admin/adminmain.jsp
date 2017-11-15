<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ page import = "java.util.HashMap" %>  

<tiles:insertAttribute name="header"/>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">

		<tiles:insertAttribute name="leftmenu"/>
		<tiles:insertAttribute name="top"/>             
        <tiles:insertAttribute name="body"/>

      </div>
    </div>

    <!-- jQuery -->
    <script src="/icase/admin/vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="/icase/admin/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="/icase/admin/vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="/icase/admin/vendors/nprogress/nprogress.js"></script>
    
    <!-- iCheck -->
    <script src="/icase/admin/vendors/iCheck/icheck.min.js"></script>    
    
    <!-- Custom Theme Scripts -->
    <script src="/icase/admin/build/js/custom.min.js"></script>
    
  	<script src="/icase/admin/production/js/bootstrap-treeview.js"></script>
  	
  	
  	
  	<script type="text/javascript">
	  	
  		function product_list_del()
  		{
  			if($("#goods_no_list:checked").length == 0)
  			{
  				alert("선택된 상품이 없습니다.");
  			}

  			if(confirm("선택된 상품을 삭제하시겠습니까?"))
  			{
  			
	  			var checked_list = "";
	  		    $('#goods_no_list:checked').each(function() { 
	  		        checked_list = checked_list + "||" + $(this).val();
	  		    });
				
	  		  $("#product_selected_list").val(checked_list);
	  		    
	  		    var params="product_selected_list="+checked_list;  
	  		    
	  	        $.ajax({
	  	            type : "POST",
	  	            url : "/icase/product_list_del.action",
	  	            data:params, 
	  	            error : function(){
	  	                alert('통신실패!!');
	  	            },
	  	            success : function(data){
	  	                alert("상품이 삭제되었습니다.");
						location.reload();
	  	            }  	             
	  	        });
  		    
  			}
  			
  		}
  	
  		$(function() {

  			$("#search_button").click(function () {
  				
  				if($("#searchKeyword").val() == "")
  				{
  					alert("검색내용을 입력해주세요.");
  					$("#searchKeyword").focus();
  					return;
  				}  				
  				
  				$('form[name=goods_search]').attr({action:'adGoodsList.action', method:'post'}).submit();
  				
  			});
  			
  			$("#product_regist_button").click(function () {
  				
  				if($("#category_no").val() == "")
  				{
  					alert("카테고리를 선택해주세요.");
  					$("#category_no").focus();
  					return;
  				}
  				
  				if($("#goods_name").val() == "")
  				{
  					alert("상품명을 입력해주세요.");
  					$("#goods_name").focus();
  					return;
  				}  		
  				
  				if($("#goods_qty").val() == "")
  				{
  					alert("상품수량을 입력해주세요.");
  					$("#goods_qty").focus();
  					return;
  				}  	
  				
  				if($("#goods_price").val() == "")
  				{
  					alert("상품가격을 입력해주세요.");
  					$("#goods_price").focus();
  					return;
  				}  	  	
  				
  				if($("#goods_color").val() == "")
  				{
  					alert("상품색깔을 입력해주세요.");
  					$("#goods_color").focus();
  					return;
  				}  	  
	  			
  				if($("#write_status").val() == "")
  				{
	  				if($("#upload").val() == "")
	  				{
	  					alert("메인이미지를 선택해주세요.");
	  					$("#upload").focus();
	  					return;
	  				}  	  
	  				
	  				if($("#upload2").val() == "")
	  				{
	  					alert("상세이미지를 선택해주세요.");
	  					$("#goods_name").focus();
	  					return;
	  				}  				
	  				
	  				$('form[name=product_regist_form]').attr({action:'adGoodsWrite.action', method:'post'}).submit();
	  				
  				}
  				else
  				{  				
  					$('form[name=product_regist_form]').attr({action:'adGoodsModify.action', method:'post'}).submit();
  				}
  			});
  			
  			$("#goods_qty, #goods_price").keyup(function () {  				
  				this.value = this.value.replace(/[^0-9]/g,'');  				
  			});
  			
	   		$("#category_control").click(function () {
	   			
	   			if($("#category_name").val() == "")
	   			{
	   				alert("카테고리 이름을 입력해주세요.");	
	   				$("#category_name").focus();
	   				return;
	   			}
	   			
	   			$("#category_no").val("");
	   			
   				$('#category_form').attr({action:'cateogyrWriteAction.action', method:'post'}).submit();
	   		});  

	   		$("#category_modify").click(function () {
				
	   			if($("#category_name").val() == "")
	   			{
	   				alert("카테고리 이름을 입력해주세요.");	
	   				$("#category_name").focus();
	   				return;
	   			}	   	
	   			
	   			if($("#category_no").val() == "")
	   			{
	   				alert("수정할 카테고리를 선택해주세요.");
	   				return;
	   			}
	   			
	   			$('#category_form').attr({action:'categoryModifyAction.action', method:'post'}).submit();	   		
	   		
	   		});  
	   		
	        var defaultData = [
	        	<s:iterator value="list" status="stat">
	            {
	              text: '<s:property value="category_name" />',
	              href: '<s:property value="category_no" />',
	              stat: '<s:property value="status" />',
	              tags: ['<s:property value="category_no" />'],
	            },
	            </s:iterator>
	          ];	   		
	   		
	        
	        $('#treeview1').treeview({
	            data: defaultData,
	            onNodeSelected: function(event, node) {
					$("#write_type").val("modify");
					$("#category_no").val(node.href);
					$("#category_name").val(node.text);
					$("select[name=status]").val(node.stat);
	            }	            
	          });	   		
	   		
  			/*
        var defaultData = [
          {
            text: 'Parent 1',
            href: '#parent1',
            tags: ['4'],
            nodes: [
              {
                text: 'Child 1',
                href: '#child1',
                tags: ['2'],
                nodes: [
                  {
                    text: 'Grandchild 1',
                    href: '#grandchild1',
                    tags: ['0']
                  },
                  {
                    text: 'Grandchild 2',
                    href: '#grandchild2',
                    tags: ['0']
                  }
                ]
              },
              {
                text: 'Child 2',
                href: '#child2',
                tags: ['0']
              }
            ]
          },
          {
            text: 'Parent 2',
            href: '#parent2',
            tags: ['0']
          },
          {
            text: 'Parent 3',
            href: '#parent3',
             tags: ['0']
          },
          {
            text: 'Parent 4',
            href: '#parent4',
            tags: ['0']
          },
          {
            text: 'Parent 5',
            href: '#parent5'  ,
            tags: ['0']
          }
        ];

        var alternateData = [
          {
            text: 'Parent 1',
            tags: ['2'],
            nodes: [
              {
                text: 'Child 1',
                tags: ['3'],
                nodes: [
                  {
                    text: 'Grandchild 1',
                    tags: ['6']
                  },
                  {
                    text: 'Grandchild 2',
                    tags: ['3']
                  }
                ]
              },
              {
                text: 'Child 2',
                tags: ['3']
              }
            ]
          },
          {
            text: 'Parent 2',
            tags: ['7']
          },
          {
            text: 'Parent 3',
            icon: 'glyphicon glyphicon-earphone',
            href: '#demo',
            tags: ['11']
          },
          {
            text: 'Parent 4',
            icon: 'glyphicon glyphicon-cloud-download',
            href: '/demo.html',
            tags: ['19'],
            selected: true
          },
          {
            text: 'Parent 5',
            icon: 'glyphicon glyphicon-certificate',
            color: 'pink',
            backColor: 'red',
            href: 'http://www.tesco.com',
            tags: ['available','0']
          }
        ];

        var json = '[' +
          '{' +
            '"text": "Parent 1",' +
            '"nodes": [' +
              '{' +
                '"text": "Child 1",' +
                '"nodes": [' +
                  '{' +
                    '"text": "Grandchild 1"' +
                  '},' +
                  '{' +
                    '"text": "Grandchild 2"' +
                  '}' +
                ']' +
              '},' +
              '{' +
                '"text": "Child 2"' +
              '}' +
            ']' +
          '},' +
          '{' +
            '"text": "Parent 2"' +
          '},' +
          '{' +
            '"text": "Parent 3"' +
          '},' +
          '{' +
            '"text": "Parent 4"' +
          '},' +
          '{' +
            '"text": "Parent 5"' +
          '}' +
        ']';


        $('#treeview1').treeview({
          data: defaultData
        });

        $('#treeview2').treeview({
          levels: 1,
          data: defaultData
        });

        $('#treeview3').treeview({
          levels: 99,
          data: defaultData
        });

        $('#treeview4').treeview({

          color: "#428bca",
          data: defaultData
        });

        $('#treeview5').treeview({
          color: "#428bca",
          expandIcon: 'glyphicon glyphicon-chevron-right',
          collapseIcon: 'glyphicon glyphicon-chevron-down',
          nodeIcon: 'glyphicon glyphicon-bookmark',
          data: defaultData
        });

        $('#treeview6').treeview({
          color: "#428bca",
          expandIcon: "glyphicon glyphicon-stop",
          collapseIcon: "glyphicon glyphicon-unchecked",
          nodeIcon: "glyphicon glyphicon-user",
          showTags: true,
          data: defaultData
        });

        $('#treeview7').treeview({
          color: "#428bca",
          showBorder: false,
          data: defaultData
        });

        $('#treeview8').treeview({
          expandIcon: "glyphicon glyphicon-stop",
          collapseIcon: "glyphicon glyphicon-unchecked",
          nodeIcon: "glyphicon glyphicon-user",
          color: "yellow",
          backColor: "purple",
          onhoverColor: "orange",
          borderColor: "red",
          showBorder: false,
          showTags: true,
          highlightSelected: true,
          selectedColor: "yellow",
          selectedBackColor: "darkorange",
          data: defaultData
        });

        $('#treeview9').treeview({
          expandIcon: "glyphicon glyphicon-stop",
          collapseIcon: "glyphicon glyphicon-unchecked",
          nodeIcon: "glyphicon glyphicon-user",
          color: "yellow",
          backColor: "purple",
          onhoverColor: "orange",
          borderColor: "red",
          showBorder: false,
          showTags: true,
          highlightSelected: true,
          selectedColor: "yellow",
          selectedBackColor: "darkorange",
          data: alternateData
        });

        $('#treeview10').treeview({
          color: "#428bca",
          enableLinks: true,
          data: defaultData
        });



        var $searchableTree = $('#treeview-searchable').treeview({
          data: defaultData,
        });

        var search = function(e) {
          var pattern = $('#input-search').val();
          var options = {
            ignoreCase: $('#chk-ignore-case').is(':checked'),
            exactMatch: $('#chk-exact-match').is(':checked'),
            revealResults: $('#chk-reveal-results').is(':checked')
          };
          var results = $searchableTree.treeview('search', [ pattern, options ]);

          var output = '<p>' + results.length + ' matches found</p>';
          $.each(results, function (index, result) {
            output += '<p>- ' + result.text + '</p>';
          });
          $('#search-output').html(output);
        }

        $('#btn-search').on('click', search);
        $('#input-search').on('keyup', search);

        $('#btn-clear-search').on('click', function (e) {
          $searchableTree.treeview('clearSearch');
          $('#input-search').val('');
          $('#search-output').html('');
        });


        var initSelectableTree = function() {
          return $('#treeview-selectable').treeview({
            data: defaultData,
            multiSelect: $('#chk-select-multi').is(':checked'),
            onNodeSelected: function(event, node) {
              $('#selectable-output').prepend('<p>' + node.text + ' was selected</p>');
            },
            onNodeUnselected: function (event, node) {
              $('#selectable-output').prepend('<p>' + node.text + ' was unselected</p>');
            }
          });
        };
        var $selectableTree = initSelectableTree();

        var findSelectableNodes = function() {
          return $selectableTree.treeview('search', [ $('#input-select-node').val(), { ignoreCase: false, exactMatch: false } ]);
        };
        var selectableNodes = findSelectableNodes();

        $('#chk-select-multi:checkbox').on('change', function () {
          console.log('multi-select change');
          $selectableTree = initSelectableTree();
          selectableNodes = findSelectableNodes();          
        });

        // Select/unselect/toggle nodes
        $('#input-select-node').on('keyup', function (e) {
          selectableNodes = findSelectableNodes();
          $('.select-node').prop('disabled', !(selectableNodes.length >= 1));
        });

        $('#btn-select-node.select-node').on('click', function (e) {
          $selectableTree.treeview('selectNode', [ selectableNodes, { silent: $('#chk-select-silent').is(':checked') }]);
        });

        $('#btn-unselect-node.select-node').on('click', function (e) {
          $selectableTree.treeview('unselectNode', [ selectableNodes, { silent: $('#chk-select-silent').is(':checked') }]);
        });

        $('#btn-toggle-selected.select-node').on('click', function (e) {
          $selectableTree.treeview('toggleNodeSelected', [ selectableNodes, { silent: $('#chk-select-silent').is(':checked') }]);
        });



        var $expandibleTree = $('#treeview-expandible').treeview({
          data: defaultData,
          onNodeCollapsed: function(event, node) {
            $('#expandible-output').prepend('<p>' + node.text + ' was collapsed</p>');
          },
          onNodeExpanded: function (event, node) {
            $('#expandible-output').prepend('<p>' + node.text + ' was expanded</p>');
          }
        });

        var findExpandibleNodess = function() {
          return $expandibleTree.treeview('search', [ $('#input-expand-node').val(), { ignoreCase: false, exactMatch: false } ]);
        };
        var expandibleNodes = findExpandibleNodess();

        // Expand/collapse/toggle nodes
        $('#input-expand-node').on('keyup', function (e) {
          expandibleNodes = findExpandibleNodess();
          $('.expand-node').prop('disabled', !(expandibleNodes.length >= 1));
        });

        $('#btn-expand-node.expand-node').on('click', function (e) {
          var levels = $('#select-expand-node-levels').val();
          $expandibleTree.treeview('expandNode', [ expandibleNodes, { levels: levels, silent: $('#chk-expand-silent').is(':checked') }]);
        });

        $('#btn-collapse-node.expand-node').on('click', function (e) {
          $expandibleTree.treeview('collapseNode', [ expandibleNodes, { silent: $('#chk-expand-silent').is(':checked') }]);
        });

        $('#btn-toggle-expanded.expand-node').on('click', function (e) {
          $expandibleTree.treeview('toggleNodeExpanded', [ expandibleNodes, { silent: $('#chk-expand-silent').is(':checked') }]);
        });

        // Expand/collapse all
        $('#btn-expand-all').on('click', function (e) {
          var levels = $('#select-expand-all-levels').val();
          $expandibleTree.treeview('expandAll', { levels: levels, silent: $('#chk-expand-silent').is(':checked') });
        });

        $('#btn-collapse-all').on('click', function (e) {
          $expandibleTree.treeview('collapseAll', { silent: $('#chk-expand-silent').is(':checked') });
        });



        var $checkableTree = $('#treeview-checkable').treeview({
          data: defaultData,
          showIcon: false,
          showCheckbox: true,
          onNodeChecked: function(event, node) {
            $('#checkable-output').prepend('<p>' + node.text + ' was checked</p>');
          },
          onNodeUnchecked: function (event, node) {
            $('#checkable-output').prepend('<p>' + node.text + ' was unchecked</p>');
          }
        });

        var findCheckableNodess = function() {
          return $checkableTree.treeview('search', [ $('#input-check-node').val(), { ignoreCase: false, exactMatch: false } ]);
        };
        var checkableNodes = findCheckableNodess();

        // Check/uncheck/toggle nodes
        $('#input-check-node').on('keyup', function (e) {
          checkableNodes = findCheckableNodess();
          $('.check-node').prop('disabled', !(checkableNodes.length >= 1));
        });

        $('#btn-check-node.check-node').on('click', function (e) {
          $checkableTree.treeview('checkNode', [ checkableNodes, { silent: $('#chk-check-silent').is(':checked') }]);
        });

        $('#btn-uncheck-node.check-node').on('click', function (e) {
          $checkableTree.treeview('uncheckNode', [ checkableNodes, { silent: $('#chk-check-silent').is(':checked') }]);
        });

        $('#btn-toggle-checked.check-node').on('click', function (e) {
          $checkableTree.treeview('toggleNodeChecked', [ checkableNodes, { silent: $('#chk-check-silent').is(':checked') }]);
        });

        // Check/uncheck all
        $('#btn-check-all').on('click', function (e) {
          $checkableTree.treeview('checkAll', { silent: $('#chk-check-silent').is(':checked') });
        });

        $('#btn-uncheck-all').on('click', function (e) {
          $checkableTree.treeview('uncheckAll', { silent: $('#chk-check-silent').is(':checked') });
        });



        var $disabledTree = $('#treeview-disabled').treeview({
          data: defaultData,
          onNodeDisabled: function(event, node) {
            $('#disabled-output').prepend('<p>' + node.text + ' was disabled</p>');
          },
          onNodeEnabled: function (event, node) {
            $('#disabled-output').prepend('<p>' + node.text + ' was enabled</p>');
          },
          onNodeCollapsed: function(event, node) {
            $('#disabled-output').prepend('<p>' + node.text + ' was collapsed</p>');
          },
          onNodeUnchecked: function (event, node) {
            $('#disabled-output').prepend('<p>' + node.text + ' was unchecked</p>');
          },
          onNodeUnselected: function (event, node) {
            $('#disabled-output').prepend('<p>' + node.text + ' was unselected</p>');
          }
        });

        var findDisabledNodes = function() {
          return $disabledTree.treeview('search', [ $('#input-disable-node').val(), { ignoreCase: false, exactMatch: false } ]);
        };
        var disabledNodes = findDisabledNodes();

        // Expand/collapse/toggle nodes
        $('#input-disable-node').on('keyup', function (e) {
          disabledNodes = findDisabledNodes();
          $('.disable-node').prop('disabled', !(disabledNodes.length >= 1));
        });

        $('#btn-disable-node.disable-node').on('click', function (e) {
          $disabledTree.treeview('disableNode', [ disabledNodes, { silent: $('#chk-disable-silent').is(':checked') }]);
        });

        $('#btn-enable-node.disable-node').on('click', function (e) {
          $disabledTree.treeview('enableNode', [ disabledNodes, { silent: $('#chk-disable-silent').is(':checked') }]);
        });

        $('#btn-toggle-disabled.disable-node').on('click', function (e) {
          $disabledTree.treeview('toggleNodeDisabled', [ disabledNodes, { silent: $('#chk-disable-silent').is(':checked') }]);
        });

        // Expand/collapse all
        $('#btn-disable-all').on('click', function (e) {
          $disabledTree.treeview('disableAll', { silent: $('#chk-disable-silent').is(':checked') });
        });

        $('#btn-enable-all').on('click', function (e) {
          $disabledTree.treeview('enableAll', { silent: $('#chk-disable-silent').is(':checked') });
        });



        var $tree = $('#treeview12').treeview({
          data: json
        });
        */
  		});
  	</script>    
    
  </body>
</html>