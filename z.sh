  


<!DOCTYPE html>
<html>
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# githubog: http://ogp.me/ns/fb/githubog#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>z-zsh/z.sh at master · sjl/z-zsh</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png" />
    <link rel="logo" type="image/svg" href="http://github-media-downloads.s3.amazonaws.com/github-logo.svg" />
    <link rel="xhr-socket" href="/_sockets" />


    <meta name="msapplication-TileImage" content="/windows-tile.png" />
    <meta name="msapplication-TileColor" content="#ffffff" />
    <meta name="selected-link" value="repo_source" data-pjax-transient />

    
    
    <link rel="icon" type="image/x-icon" href="/favicon.ico" />

    <meta content="authenticity_token" name="csrf-param" />
<meta content="kgWAF+CDlSvVn05FxIInrzHzfUNCA/m7MteQ2x+pvkc=" name="csrf-token" />

    <link href="https://a248.e.akamai.net/assets.github.com/assets/github-5b364eeaae0f96a33d6de9704239924ede95fbc2.css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://a248.e.akamai.net/assets.github.com/assets/github2-749329f6bc4f0f2842535f983d87bfdf7d109c41.css" media="all" rel="stylesheet" type="text/css" />
    


      <script src="https://a248.e.akamai.net/assets.github.com/assets/frameworks-92d138f450f2960501e28397a2f63b0f100590f0.js" type="text/javascript"></script>
      <script src="https://a248.e.akamai.net/assets.github.com/assets/github-bc374985e8441015fc645eca5b08988b6eadc695.js" type="text/javascript"></script>
      
      <meta http-equiv="x-pjax-version" content="a83f1cf6e26760d57e6880aeba2ca38a">

        <link data-pjax-transient rel='permalink' href='/sjl/z-zsh/blob/052a6cbbcd83c1968a11c26d75950bf455b816fb/z.sh'>
    <meta property="og:title" content="z-zsh"/>
    <meta property="og:type" content="githubog:gitrepository"/>
    <meta property="og:url" content="https://github.com/sjl/z-zsh"/>
    <meta property="og:image" content="https://secure.gravatar.com/avatar/143487689572bcc7084c2b6aa1f48c46?s=420&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png"/>
    <meta property="og:site_name" content="GitHub"/>
    <meta property="og:description" content="z-zsh - z is the new j, yo"/>
    <meta property="twitter:card" content="summary"/>
    <meta property="twitter:site" content="@GitHub">
    <meta property="twitter:title" content="sjl/z-zsh"/>

    <meta name="description" content="z-zsh - z is the new j, yo" />

  <link href="https://github.com/sjl/z-zsh/commits/master.atom" rel="alternate" title="Recent Commits to z-zsh:master" type="application/atom+xml" />

  </head>


  <body class="logged_in page-blob linux vis-public fork env-production  ">
    <div id="wrapper">

      

      
      
      

      <div class="header header-logged-in true">
  <div class="container clearfix">

    <a class="header-logo-invertocat" href="https://github.com/">
  <span class="mega-icon mega-icon-invertocat"></span>
</a>

    <div class="divider-vertical"></div>

    
  <a href="/notifications" class="notification-indicator tooltipped downwards" title="You have unread notifications">
    <span class="mail-status unread"></span>
  </a>
  <div class="divider-vertical"></div>


      <div class="command-bar js-command-bar  ">
            <form accept-charset="UTF-8" action="/search" class="command-bar-form" id="top_search_form" method="get">
  <a href="/search/advanced" class="advanced-search-icon tooltipped downwards command-bar-search" id="advanced_search" title="Advanced search"><span class="mini-icon mini-icon-advanced-search "></span></a>

  <input type="text" data-hotkey="/ s" name="q" id="js-command-bar-field" placeholder="Search or type a command" tabindex="1" data-username="tshirtman" autocapitalize="off">

  <span class="mini-icon help tooltipped downwards" title="Show command bar help">
    <span class="mini-icon mini-icon-help"></span>
  </span>

  <input type="hidden" name="ref" value="cmdform">

    <input type="hidden" class="js-repository-name-with-owner" value="sjl/z-zsh"/>
    <input type="hidden" class="js-repository-branch" value="master"/>
    <input type="hidden" class="js-repository-tree-sha" value="0767f2599d51fceee87e524bece26de2ea2814b6"/>

  <div class="divider-vertical"></div>
</form>
        <ul class="top-nav">
            <li class="explore"><a href="https://github.com/explore">Explore</a></li>
            <li><a href="https://gist.github.com">Gist</a></li>
            <li><a href="/blog">Blog</a></li>
          <li><a href="http://help.github.com">Help</a></li>
        </ul>
      </div>

    

  

    <ul id="user-links">
      <li>
        <a href="https://github.com/tshirtman" class="name">
          <img height="20" src="https://secure.gravatar.com/avatar/2315c81b442502ae979a22c807df84e9?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /> tshirtman
        </a>
      </li>

        <li>
          <a href="/new" id="new_repo" class="tooltipped downwards" title="Create a new repo">
            <span class="mini-icon mini-icon-create"></span>
          </a>
        </li>

        <li>
          <a href="/settings/profile" id="account_settings"
            class="tooltipped downwards"
            title="Account settings ">
            <span class="mini-icon mini-icon-account-settings"></span>
          </a>
        </li>
        <li>
          <a class="tooltipped downwards" href="/logout" data-method="post" id="logout" title="Sign out">
            <span class="mini-icon mini-icon-logout"></span>
          </a>
        </li>

    </ul>


<div class="js-new-dropdown-contents hidden">
  <ul class="dropdown-menu">
    <li>
      <a href="/new"><span class="mini-icon mini-icon-create"></span> New repository</a>
    </li>
    <li>
        <a href="https://github.com/sjl/z-zsh/issues/new"><span class="mini-icon mini-icon-issue-opened"></span> New issue</a>
    </li>
    <li>
    </li>
    <li>
      <a href="/organizations/new"><span class="mini-icon mini-icon-u-list"></span> New organization</a>
    </li>
  </ul>
</div>


    
  </div>
</div>

      

      

      


            <div class="site hfeed" itemscope itemtype="http://schema.org/WebPage">
      <div class="hentry">
        
        <div class="pagehead repohead instapaper_ignore readability-menu ">
          <div class="container">
            <div class="title-actions-bar">
              

<ul class="pagehead-actions">


    <li class="subscription">
      <form accept-charset="UTF-8" action="/notifications/subscribe" data-autosubmit="true" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="authenticity_token" type="hidden" value="kgWAF+CDlSvVn05FxIInrzHzfUNCA/m7MteQ2x+pvkc=" /></div>  <input id="repository_id" name="repository_id" type="hidden" value="511279" />

    <div class="select-menu js-menu-container js-select-menu">
      <span class="minibutton select-menu-button js-menu-target">
        <span class="js-select-button">
          <span class="mini-icon mini-icon-watching"></span>
          Watch
        </span>
      </span>

      <div class="select-menu-modal-holder js-menu-content">
        <div class="select-menu-modal">
          <div class="select-menu-header">
            <span class="select-menu-title">Notification status</span>
            <span class="mini-icon mini-icon-remove-close js-menu-close"></span>
          </div> <!-- /.select-menu-header -->

          <div class="select-menu-list js-navigation-container">

            <div class="select-menu-item js-navigation-item selected">
              <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
              <div class="select-menu-item-text">
                <input checked="checked" id="do_included" name="do" type="radio" value="included" />
                <h4>Not watching</h4>
                <span class="description">You only receive notifications for discussions in which you participate or are @mentioned.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="mini-icon mini-icon-watching"></span>
                  Watch
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
              <div class="select-menu-item-text">
                <input id="do_subscribed" name="do" type="radio" value="subscribed" />
                <h4>Watching</h4>
                <span class="description">You receive notifications for all discussions in this repository.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="mini-icon mini-icon-unwatch"></span>
                  Unwatch
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
              <div class="select-menu-item-text">
                <input id="do_ignore" name="do" type="radio" value="ignore" />
                <h4>Ignoring</h4>
                <span class="description">You do not receive any notifications for discussions in this repository.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="mini-icon mini-icon-mute"></span>
                  Stop ignoring
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

          </div> <!-- /.select-menu-list -->

        </div> <!-- /.select-menu-modal -->
      </div> <!-- /.select-menu-modal-holder -->
    </div> <!-- /.select-menu -->

</form>
    </li>

    <li class="js-toggler-container js-social-container starring-container ">
      <a href="/sjl/z-zsh/unstar" class="minibutton js-toggler-target star-button starred upwards" title="Unstar this repo" data-remote="true" data-method="post" rel="nofollow">
        <span class="mini-icon mini-icon-remove-star"></span>
        <span class="text">Unstar</span>
      </a>
      <a href="/sjl/z-zsh/star" class="minibutton js-toggler-target star-button unstarred upwards" title="Star this repo" data-remote="true" data-method="post" rel="nofollow">
        <span class="mini-icon mini-icon-star"></span>
        <span class="text">Star</span>
      </a>
      <a class="social-count js-social-count" href="/sjl/z-zsh/stargazers">45</a>
    </li>

        <li>
          <a href="/sjl/z-zsh/fork" class="minibutton js-toggler-target fork-button lighter upwards" title="Fork this repo" rel="facebox nofollow">
            <span class="mini-icon mini-icon-branch-create"></span>
            <span class="text">Fork</span>
          </a>
          <a href="/sjl/z-zsh/network" class="social-count">133</a>
        </li>


</ul>

              <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
                <span class="repo-label"><span>public</span></span>
                <span class="mega-icon mega-icon-repo-forked"></span>
                <span class="author vcard">
                  <a href="/sjl" class="url fn" itemprop="url" rel="author">
                  <span itemprop="title">sjl</span>
                  </a></span> /
                <strong><a href="/sjl/z-zsh" class="js-current-repository">z-zsh</a></strong>
                  <span class="fork-flag">
                    <span class="text">forked from <a href="/rupa/z">rupa/z</a></span>
                  </span>
              </h1>
            </div>

            
  <ul class="tabs">
    <li class="pulse-nav"><a href="/sjl/z-zsh/pulse" class="js-selected-navigation-item " data-selected-links="pulse /sjl/z-zsh/pulse" rel="nofollow"><span class="mini-icon mini-icon-pulse"></span></a></li>
    <li><a href="/sjl/z-zsh" class="js-selected-navigation-item selected" data-selected-links="repo_source repo_downloads repo_commits repo_tags repo_branches /sjl/z-zsh">Code</a></li>
    <li><a href="/sjl/z-zsh/network" class="js-selected-navigation-item " data-selected-links="repo_network /sjl/z-zsh/network">Network</a></li>
    <li><a href="/sjl/z-zsh/pulls" class="js-selected-navigation-item " data-selected-links="repo_pulls /sjl/z-zsh/pulls">Pull Requests <span class='counter'>0</span></a></li>


      <li><a href="/sjl/z-zsh/wiki" class="js-selected-navigation-item " data-selected-links="repo_wiki /sjl/z-zsh/wiki">Wiki</a></li>


    <li><a href="/sjl/z-zsh/graphs" class="js-selected-navigation-item " data-selected-links="repo_graphs repo_contributors /sjl/z-zsh/graphs">Graphs</a></li>


  </ul>
  
<div class="tabnav">

  <span class="tabnav-right">
    <ul class="tabnav-tabs">
          <li><a href="/sjl/z-zsh/tags" class="js-selected-navigation-item tabnav-tab" data-selected-links="repo_tags /sjl/z-zsh/tags">Tags <span class="counter blank">0</span></a></li>
    </ul>
    
  </span>

  <div class="tabnav-widget scope">


    <div class="select-menu js-menu-container js-select-menu js-branch-menu">
      <a class="minibutton select-menu-button js-menu-target" data-hotkey="w" data-ref="master">
        <span class="mini-icon mini-icon-branch"></span>
        <i>branch:</i>
        <span class="js-select-button">master</span>
      </a>

      <div class="select-menu-modal-holder js-menu-content js-navigation-container">

        <div class="select-menu-modal">
          <div class="select-menu-header">
            <span class="select-menu-title">Switch branches/tags</span>
            <span class="mini-icon mini-icon-remove-close js-menu-close"></span>
          </div> <!-- /.select-menu-header -->

          <div class="select-menu-filters">
            <div class="select-menu-text-filter">
              <input type="text" id="commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
            </div>
            <div class="select-menu-tabs">
              <ul>
                <li class="select-menu-tab">
                  <a href="#" data-tab-filter="branches" class="js-select-menu-tab">Branches</a>
                </li>
                <li class="select-menu-tab">
                  <a href="#" data-tab-filter="tags" class="js-select-menu-tab">Tags</a>
                </li>
              </ul>
            </div><!-- /.select-menu-tabs -->
          </div><!-- /.select-menu-filters -->

          <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket css-truncate" data-tab-filter="branches">

            <div data-filterable-for="commitish-filter-field" data-filterable-type="substring">

                <div class="select-menu-item js-navigation-item selected">
                  <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                  <a href="/sjl/z-zsh/blob/master/z.sh" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="master" rel="nofollow" title="master">master</a>
                </div> <!-- /.select-menu-item -->
            </div>

              <div class="select-menu-no-results">Nothing to show</div>
          </div> <!-- /.select-menu-list -->


          <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket css-truncate" data-tab-filter="tags">
            <div data-filterable-for="commitish-filter-field" data-filterable-type="substring">

            </div>

            <div class="select-menu-no-results">Nothing to show</div>

          </div> <!-- /.select-menu-list -->

        </div> <!-- /.select-menu-modal -->
      </div> <!-- /.select-menu-modal-holder -->
    </div> <!-- /.select-menu -->

  </div> <!-- /.scope -->

  <ul class="tabnav-tabs">
    <li><a href="/sjl/z-zsh" class="selected js-selected-navigation-item tabnav-tab" data-selected-links="repo_source /sjl/z-zsh">Files</a></li>
    <li><a href="/sjl/z-zsh/commits/master" class="js-selected-navigation-item tabnav-tab" data-selected-links="repo_commits /sjl/z-zsh/commits/master">Commits</a></li>
    <li><a href="/sjl/z-zsh/branches" class="js-selected-navigation-item tabnav-tab" data-selected-links="repo_branches /sjl/z-zsh/branches" rel="nofollow">Branches <span class="counter ">1</span></a></li>
  </ul>

</div>

  
  
  


            
          </div>
        </div><!-- /.repohead -->

        <div id="js-repo-pjax-container" class="container context-loader-container" data-pjax-container>
          


<!-- blob contrib key: blob_contributors:v21:4abc34522fe57b87f26ff96907eee5f4 -->
<!-- blob contrib frag key: views10/v8/blob_contributors:v21:4abc34522fe57b87f26ff96907eee5f4 -->


<div id="slider">
    <div class="frame-meta">

      <p title="This is a placeholder element" class="js-history-link-replace hidden"></p>

        <div class="breadcrumb">
          <span class='bold'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/sjl/z-zsh" class="js-slide-to" data-branch="master" data-direction="back" itemscope="url"><span itemprop="title">z-zsh</span></a></span></span><span class="separator"> / </span><strong class="final-path">z.sh</strong> <span class="js-zeroclipboard zeroclipboard-button" data-clipboard-text="z.sh" data-copied-hint="copied!" title="copy to clipboard"><span class="mini-icon mini-icon-clipboard"></span></span>
        </div>

      <a href="/sjl/z-zsh/find/master" class="js-slide-to" data-hotkey="t" style="display:none">Show File Finder</a>


        <div class="commit commit-loader file-history-tease js-deferred-content" data-url="/sjl/z-zsh/contributors/master/z.sh">
          Fetching contributors…

          <div class="participation">
            <p class="loader-loading"><img alt="Octocat-spinner-32-eaf2f5" height="16" src="https://a248.e.akamai.net/assets.github.com/images/spinners/octocat-spinner-32-EAF2F5.gif?1359500886" width="16" /></p>
            <p class="loader-error">Cannot retrieve contributors at this time</p>
          </div>
        </div>

    </div><!-- ./.frame-meta -->

    <div class="frames">
      <div class="frame" data-permalink-url="/sjl/z-zsh/blob/052a6cbbcd83c1968a11c26d75950bf455b816fb/z.sh" data-title="z-zsh/z.sh at master · sjl/z-zsh · GitHub" data-type="blob">

        <div id="files" class="bubble">
          <div class="file">
            <div class="meta">
              <div class="info">
                <span class="icon"><b class="mini-icon mini-icon-text-file"></b></span>
                <span class="mode" title="File Mode">file</span>
                  <span>137 lines (134 sloc)</span>
                <span>3.814 kb</span>
              </div>
              <div class="actions">
                <div class="button-group">
                        <a class="minibutton tooltipped leftwards"
                           title="Clicking this button will automatically fork this project so you can edit the file"
                           href="/sjl/z-zsh/edit/master/z.sh"
                           data-method="post" rel="nofollow">Edit</a>
                  <a href="/sjl/z-zsh/raw/master/z.sh" class="button minibutton " id="raw-url">Raw</a>
                    <a href="/sjl/z-zsh/blame/master/z.sh" class="button minibutton ">Blame</a>
                  <a href="/sjl/z-zsh/commits/master/z.sh" class="button minibutton " rel="nofollow">History</a>
                </div><!-- /.button-group -->
              </div><!-- /.actions -->

            </div>
                <div class="blob-wrapper data type-shell js-blob-data">
      <table class="file-code file-diff">
        <tr class="file-code-line">
          <td class="blob-line-nums">
            <span id="L1" rel="#L1">1</span>
<span id="L2" rel="#L2">2</span>
<span id="L3" rel="#L3">3</span>
<span id="L4" rel="#L4">4</span>
<span id="L5" rel="#L5">5</span>
<span id="L6" rel="#L6">6</span>
<span id="L7" rel="#L7">7</span>
<span id="L8" rel="#L8">8</span>
<span id="L9" rel="#L9">9</span>
<span id="L10" rel="#L10">10</span>
<span id="L11" rel="#L11">11</span>
<span id="L12" rel="#L12">12</span>
<span id="L13" rel="#L13">13</span>
<span id="L14" rel="#L14">14</span>
<span id="L15" rel="#L15">15</span>
<span id="L16" rel="#L16">16</span>
<span id="L17" rel="#L17">17</span>
<span id="L18" rel="#L18">18</span>
<span id="L19" rel="#L19">19</span>
<span id="L20" rel="#L20">20</span>
<span id="L21" rel="#L21">21</span>
<span id="L22" rel="#L22">22</span>
<span id="L23" rel="#L23">23</span>
<span id="L24" rel="#L24">24</span>
<span id="L25" rel="#L25">25</span>
<span id="L26" rel="#L26">26</span>
<span id="L27" rel="#L27">27</span>
<span id="L28" rel="#L28">28</span>
<span id="L29" rel="#L29">29</span>
<span id="L30" rel="#L30">30</span>
<span id="L31" rel="#L31">31</span>
<span id="L32" rel="#L32">32</span>
<span id="L33" rel="#L33">33</span>
<span id="L34" rel="#L34">34</span>
<span id="L35" rel="#L35">35</span>
<span id="L36" rel="#L36">36</span>
<span id="L37" rel="#L37">37</span>
<span id="L38" rel="#L38">38</span>
<span id="L39" rel="#L39">39</span>
<span id="L40" rel="#L40">40</span>
<span id="L41" rel="#L41">41</span>
<span id="L42" rel="#L42">42</span>
<span id="L43" rel="#L43">43</span>
<span id="L44" rel="#L44">44</span>
<span id="L45" rel="#L45">45</span>
<span id="L46" rel="#L46">46</span>
<span id="L47" rel="#L47">47</span>
<span id="L48" rel="#L48">48</span>
<span id="L49" rel="#L49">49</span>
<span id="L50" rel="#L50">50</span>
<span id="L51" rel="#L51">51</span>
<span id="L52" rel="#L52">52</span>
<span id="L53" rel="#L53">53</span>
<span id="L54" rel="#L54">54</span>
<span id="L55" rel="#L55">55</span>
<span id="L56" rel="#L56">56</span>
<span id="L57" rel="#L57">57</span>
<span id="L58" rel="#L58">58</span>
<span id="L59" rel="#L59">59</span>
<span id="L60" rel="#L60">60</span>
<span id="L61" rel="#L61">61</span>
<span id="L62" rel="#L62">62</span>
<span id="L63" rel="#L63">63</span>
<span id="L64" rel="#L64">64</span>
<span id="L65" rel="#L65">65</span>
<span id="L66" rel="#L66">66</span>
<span id="L67" rel="#L67">67</span>
<span id="L68" rel="#L68">68</span>
<span id="L69" rel="#L69">69</span>
<span id="L70" rel="#L70">70</span>
<span id="L71" rel="#L71">71</span>
<span id="L72" rel="#L72">72</span>
<span id="L73" rel="#L73">73</span>
<span id="L74" rel="#L74">74</span>
<span id="L75" rel="#L75">75</span>
<span id="L76" rel="#L76">76</span>
<span id="L77" rel="#L77">77</span>
<span id="L78" rel="#L78">78</span>
<span id="L79" rel="#L79">79</span>
<span id="L80" rel="#L80">80</span>
<span id="L81" rel="#L81">81</span>
<span id="L82" rel="#L82">82</span>
<span id="L83" rel="#L83">83</span>
<span id="L84" rel="#L84">84</span>
<span id="L85" rel="#L85">85</span>
<span id="L86" rel="#L86">86</span>
<span id="L87" rel="#L87">87</span>
<span id="L88" rel="#L88">88</span>
<span id="L89" rel="#L89">89</span>
<span id="L90" rel="#L90">90</span>
<span id="L91" rel="#L91">91</span>
<span id="L92" rel="#L92">92</span>
<span id="L93" rel="#L93">93</span>
<span id="L94" rel="#L94">94</span>
<span id="L95" rel="#L95">95</span>
<span id="L96" rel="#L96">96</span>
<span id="L97" rel="#L97">97</span>
<span id="L98" rel="#L98">98</span>
<span id="L99" rel="#L99">99</span>
<span id="L100" rel="#L100">100</span>
<span id="L101" rel="#L101">101</span>
<span id="L102" rel="#L102">102</span>
<span id="L103" rel="#L103">103</span>
<span id="L104" rel="#L104">104</span>
<span id="L105" rel="#L105">105</span>
<span id="L106" rel="#L106">106</span>
<span id="L107" rel="#L107">107</span>
<span id="L108" rel="#L108">108</span>
<span id="L109" rel="#L109">109</span>
<span id="L110" rel="#L110">110</span>
<span id="L111" rel="#L111">111</span>
<span id="L112" rel="#L112">112</span>
<span id="L113" rel="#L113">113</span>
<span id="L114" rel="#L114">114</span>
<span id="L115" rel="#L115">115</span>
<span id="L116" rel="#L116">116</span>
<span id="L117" rel="#L117">117</span>
<span id="L118" rel="#L118">118</span>
<span id="L119" rel="#L119">119</span>
<span id="L120" rel="#L120">120</span>
<span id="L121" rel="#L121">121</span>
<span id="L122" rel="#L122">122</span>
<span id="L123" rel="#L123">123</span>
<span id="L124" rel="#L124">124</span>
<span id="L125" rel="#L125">125</span>
<span id="L126" rel="#L126">126</span>
<span id="L127" rel="#L127">127</span>
<span id="L128" rel="#L128">128</span>
<span id="L129" rel="#L129">129</span>
<span id="L130" rel="#L130">130</span>
<span id="L131" rel="#L131">131</span>
<span id="L132" rel="#L132">132</span>
<span id="L133" rel="#L133">133</span>
<span id="L134" rel="#L134">134</span>
<span id="L135" rel="#L135">135</span>
<span id="L136" rel="#L136">136</span>

          </td>
          <td class="blob-line-code">
                  <div class="highlight"><pre><div class='line' id='LC1'><span class="c">#!/bin/bash</span></div><div class='line' id='LC2'><br/></div><div class='line' id='LC3'><span class="c"># maintains a jump-list of the directories you actually use</span></div><div class='line' id='LC4'><span class="c">#</span></div><div class='line' id='LC5'><span class="c"># INSTALL:</span></div><div class='line' id='LC6'><span class="c">#   * put something like this in your .bashrc:</span></div><div class='line' id='LC7'><span class="c">#     . /path/to/z.sh</span></div><div class='line' id='LC8'><span class="c">#   * cd around for a while to build up the db</span></div><div class='line' id='LC9'><span class="c">#   * PROFIT!!</span></div><div class='line' id='LC10'><span class="c">#</span></div><div class='line' id='LC11'><span class="c"># USE:</span></div><div class='line' id='LC12'><span class="c">#   * z foo     # goes to most frecent dir matching foo</span></div><div class='line' id='LC13'><span class="c">#   * z foo bar # goes to most frecent dir matching foo and bar</span></div><div class='line' id='LC14'><span class="c">#   * z -r foo  # goes to highest ranked dir matching foo</span></div><div class='line' id='LC15'><span class="c">#   * z -t foo  # goes to most recently accessed dir matching foo</span></div><div class='line' id='LC16'><span class="c">#   * z -l foo  # list all dirs matching foo (by frecency)</span></div><div class='line' id='LC17'><br/></div><div class='line' id='LC18'>z<span class="o">()</span> <span class="o">{</span></div><div class='line' id='LC19'>&nbsp;<span class="nb">local </span><span class="nv">datafile</span><span class="o">=</span><span class="nv">$HOME</span>/.z</div><div class='line' id='LC20'>&nbsp;<span class="k">if</span> <span class="o">[</span> <span class="s2">&quot;$1&quot;</span> <span class="o">=</span> <span class="s2">&quot;--add&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC21'>&nbsp;&nbsp;<span class="c"># add</span></div><div class='line' id='LC22'>&nbsp;&nbsp;<span class="nb">shift</span></div><div class='line' id='LC23'>&nbsp;&nbsp;<span class="c"># $HOME isn&#39;t worth matching</span></div><div class='line' id='LC24'>&nbsp;&nbsp;<span class="o">[</span> <span class="s2">&quot;$*&quot;</span> <span class="o">=</span> <span class="s2">&quot;$HOME&quot;</span> <span class="o">]</span> <span class="o">&amp;&amp;</span> <span class="k">return</span></div><div class='line' id='LC25'><span class="k">  </span>awk -v <span class="nv">p</span><span class="o">=</span><span class="s2">&quot;$*&quot;</span> -v <span class="nv">t</span><span class="o">=</span><span class="s2">&quot;$(date +%s)&quot;</span> -F<span class="s2">&quot;|&quot;</span> <span class="s1">&#39;</span></div><div class='line' id='LC26'><span class="s1">   BEGIN { rank[p] = 1; time[p] = t }</span></div><div class='line' id='LC27'><span class="s1">   $2 &gt;= 1 {</span></div><div class='line' id='LC28'><span class="s1">    if( $1 == p ) {</span></div><div class='line' id='LC29'><span class="s1">     rank[$1] = $2 + 1</span></div><div class='line' id='LC30'><span class="s1">     time[$1] = t</span></div><div class='line' id='LC31'><span class="s1">    } else {</span></div><div class='line' id='LC32'><span class="s1">     rank[$1] = $2</span></div><div class='line' id='LC33'><span class="s1">     time[$1] = $3</span></div><div class='line' id='LC34'><span class="s1">    }</span></div><div class='line' id='LC35'><span class="s1">    count += $2</span></div><div class='line' id='LC36'><span class="s1">   }</span></div><div class='line' id='LC37'><span class="s1">   END {</span></div><div class='line' id='LC38'><span class="s1">    if( count &gt; 1000 ) {</span></div><div class='line' id='LC39'><span class="s1">     for( i in rank ) print i &quot;|&quot; 0.9*rank[i] &quot;|&quot; time[i] # aging</span></div><div class='line' id='LC40'><span class="s1">    } else for( i in rank ) print i &quot;|&quot; rank[i] &quot;|&quot; time[i]</span></div><div class='line' id='LC41'><span class="s1">   }</span></div><div class='line' id='LC42'><span class="s1">  &#39;</span> <span class="nv">$datafile</span> 2&gt;/dev/null &gt; <span class="nv">$datafile</span>.tmp</div><div class='line' id='LC43'>&nbsp;&nbsp;mv -f <span class="nv">$datafile</span>.tmp <span class="nv">$datafile</span></div><div class='line' id='LC44'>&nbsp;<span class="k">elif</span> <span class="o">[</span> <span class="s2">&quot;$1&quot;</span> <span class="o">=</span> <span class="s2">&quot;--complete&quot;</span> <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC45'>&nbsp;&nbsp;<span class="c"># tab completion</span></div><div class='line' id='LC46'>&nbsp;&nbsp;awk -v <span class="nv">q</span><span class="o">=</span><span class="s2">&quot;$2&quot;</span> -F<span class="s2">&quot;|&quot;</span> <span class="s1">&#39;</span></div><div class='line' id='LC47'><span class="s1">   BEGIN { split(substr(q,3),fnd,&quot; &quot;) }</span></div><div class='line' id='LC48'><span class="s1">   {</span></div><div class='line' id='LC49'><span class="s1">    if( system(&quot;test -d \&quot;&quot; $1 &quot;\&quot;&quot;) ) next</span></div><div class='line' id='LC50'><span class="s1">    for( i in fnd ) $1 !~ fnd[i] &amp;&amp; $1 = &quot;&quot;; if( $1 ) print $1</span></div><div class='line' id='LC51'><span class="s1">   }</span></div><div class='line' id='LC52'><span class="s1">  &#39;</span> <span class="nv">$datafile</span> 2&gt;/dev/null</div><div class='line' id='LC53'>&nbsp;<span class="k">else</span></div><div class='line' id='LC54'>&nbsp;&nbsp;<span class="c"># list/go</span></div><div class='line' id='LC55'>&nbsp;&nbsp;<span class="k">while</span> <span class="o">[</span> <span class="s2">&quot;$1&quot;</span> <span class="o">]</span>; <span class="k">do case</span> <span class="s2">&quot;$1&quot;</span> in</div><div class='line' id='LC56'>&nbsp;&nbsp;&nbsp;-h<span class="o">)</span> <span class="nb">echo</span> <span class="s2">&quot;z [-h][-l][-r][-t] args&quot;</span> &gt;&amp;2; <span class="k">return</span>;;</div><div class='line' id='LC57'>&nbsp;&nbsp;&nbsp;-l<span class="o">)</span> <span class="nb">local </span><span class="nv">list</span><span class="o">=</span>1;;</div><div class='line' id='LC58'>&nbsp;&nbsp;&nbsp;-r<span class="o">)</span> <span class="nb">local </span><span class="nv">typ</span><span class="o">=</span><span class="s2">&quot;rank&quot;</span>;;</div><div class='line' id='LC59'>&nbsp;&nbsp;&nbsp;-t<span class="o">)</span> <span class="nb">local </span><span class="nv">typ</span><span class="o">=</span><span class="s2">&quot;recent&quot;</span>;;</div><div class='line' id='LC60'>&nbsp;&nbsp;&nbsp;--<span class="o">)</span> <span class="k">while</span> <span class="o">[</span> <span class="s2">&quot;$1&quot;</span> <span class="o">]</span>; <span class="k">do </span><span class="nb">shift</span>; <span class="nb">local </span><span class="nv">fnd</span><span class="o">=</span><span class="s2">&quot;$fnd $1&quot;</span>;<span class="k">done</span>;;</div><div class='line' id='LC61'>&nbsp;&nbsp;&nbsp;&nbsp;*<span class="o">)</span> <span class="nb">local </span><span class="nv">fnd</span><span class="o">=</span><span class="s2">&quot;$fnd $1&quot;</span>;;</div><div class='line' id='LC62'>&nbsp;&nbsp;<span class="k">esac</span>; <span class="nb">local </span><span class="nv">last</span><span class="o">=</span><span class="nv">$1</span>; <span class="nb">shift</span>; <span class="k">done</span></div><div class='line' id='LC63'>&nbsp;&nbsp;<span class="o">[</span> <span class="s2">&quot;$fnd&quot;</span> <span class="o">]</span> <span class="o">||</span> <span class="nb">local </span><span class="nv">list</span><span class="o">=</span>1</div><div class='line' id='LC64'>&nbsp;&nbsp;<span class="c"># if we hit enter on a completion just go there</span></div><div class='line' id='LC65'>&nbsp;&nbsp;<span class="o">[</span> -d <span class="s2">&quot;$last&quot;</span> <span class="o">]</span> <span class="o">&amp;&amp;</span> <span class="nb">cd</span> <span class="s2">&quot;$last&quot;</span> <span class="o">&amp;&amp;</span> <span class="k">return</span></div><div class='line' id='LC66'>&nbsp;&nbsp;<span class="o">[</span> -f <span class="s2">&quot;$datafile&quot;</span> <span class="o">]</span> <span class="o">||</span> <span class="k">return</span></div><div class='line' id='LC67'><span class="k">  </span><span class="nb">local cd</span><span class="o">=</span><span class="s2">&quot;$(awk -v t=&quot;</span><span class="k">$(</span>date +%s<span class="k">)</span><span class="s2">&quot; -v list=&quot;</span><span class="nv">$list</span><span class="s2">&quot; -v typ=&quot;</span><span class="nv">$typ</span><span class="s2">&quot; -v q=&quot;</span><span class="nv">$fnd</span><span class="s2">&quot; -v tmpfl=&quot;</span><span class="nv">$datafile</span>.tmp<span class="s2">&quot; -F&quot;</span>|<span class="s2">&quot; &#39;</span></div><div class='line' id='LC68'><span class="s2">   function frecent(rank, time) {</span></div><div class='line' id='LC69'><span class="s2">    dx = t-time</span></div><div class='line' id='LC70'><span class="s2">    if( dx &lt; 3600 ) return rank*4</span></div><div class='line' id='LC71'><span class="s2">    if( dx &lt; 86400 ) return rank*2</span></div><div class='line' id='LC72'><span class="s2">    if( dx &lt; 604800 ) return rank/2</span></div><div class='line' id='LC73'><span class="s2">    return rank/4</span></div><div class='line' id='LC74'><span class="s2">   }</span></div><div class='line' id='LC75'><span class="s2">   function output(files, toopen, override) {</span></div><div class='line' id='LC76'><span class="s2">    if( list ) {</span></div><div class='line' id='LC77'><span class="s2">     if( typ == &quot;</span>recent<span class="s2">&quot; ) {</span></div><div class='line' id='LC78'><span class="s2">      cmd = &quot;</span>sort -nr &gt;&amp;2<span class="s2">&quot;</span></div><div class='line' id='LC79'><span class="s2">     } else cmd = &quot;</span>sort -n &gt;&amp;2<span class="s2">&quot;</span></div><div class='line' id='LC80'><span class="s2">     for( i in files ) if( files[i] ) printf &quot;</span>%-10s %s<span class="se">\n</span><span class="s2">&quot;, files[i], i | cmd</span></div><div class='line' id='LC81'><span class="s2">     if( override ) printf &quot;</span>%-10s %s<span class="se">\n</span><span class="s2">&quot;, &quot;</span>common:<span class="s2">&quot;, override &gt; &quot;</span>/dev/stderr<span class="s2">&quot;</span></div><div class='line' id='LC82'><span class="s2">    } else {</span></div><div class='line' id='LC83'><span class="s2">     if( override ) toopen = override</span></div><div class='line' id='LC84'><span class="s2">     print toopen</span></div><div class='line' id='LC85'><span class="s2">    }</span></div><div class='line' id='LC86'><span class="s2">   }</span></div><div class='line' id='LC87'><span class="s2">   function common(matches, fnd, nc) {</span></div><div class='line' id='LC88'><span class="s2">    for( i in matches ) {</span></div><div class='line' id='LC89'><span class="s2">     if( matches[i] &amp;&amp; (!short || length(i) &lt; length(short)) ) short = i</span></div><div class='line' id='LC90'><span class="s2">    }</span></div><div class='line' id='LC91'><span class="s2">    if( short == &quot;</span>/<span class="s2">&quot; ) return</span></div><div class='line' id='LC92'><span class="s2">    for( i in matches ) if( matches[i] &amp;&amp; i !~ short ) x = 1</span></div><div class='line' id='LC93'><span class="s2">    if( x ) return</span></div><div class='line' id='LC94'><span class="s2">    if( nc ) {</span></div><div class='line' id='LC95'><span class="s2">     for( i in fnd ) if( tolower(short) !~ tolower(fnd[i]) ) x = 1</span></div><div class='line' id='LC96'><span class="s2">    } else for( i in fnd ) if( short !~ fnd[i] ) x = 1</span></div><div class='line' id='LC97'><span class="s2">    if( !x ) return short</span></div><div class='line' id='LC98'><span class="s2">   }</span></div><div class='line' id='LC99'><span class="s2">   BEGIN { split(q, a, &quot;</span> <span class="s2">&quot;) }</span></div><div class='line' id='LC100'><span class="s2">   {</span></div><div class='line' id='LC101'><span class="s2">    if( system(&quot;</span><span class="nb">test</span> -d <span class="se">\&quot;</span><span class="s2">&quot; $1 &quot;</span><span class="se">\&quot;</span><span class="s2">&quot;) ) next</span></div><div class='line' id='LC102'><span class="s2">    print $0 &gt;&gt; tmpfl</span></div><div class='line' id='LC103'><span class="s2">    if( typ == &quot;</span>rank<span class="s2">&quot; ) {</span></div><div class='line' id='LC104'><span class="s2">     f = $2</span></div><div class='line' id='LC105'><span class="s2">    } else if( typ == &quot;</span>recent<span class="s2">&quot; ) {</span></div><div class='line' id='LC106'><span class="s2">     f = t-$3</span></div><div class='line' id='LC107'><span class="s2">    } else f = frecent($2, $3)</span></div><div class='line' id='LC108'><span class="s2">    wcase[$1] = nocase[$1] = f</span></div><div class='line' id='LC109'><span class="s2">    for( i in a ) {</span></div><div class='line' id='LC110'><span class="s2">     if( $1 !~ a[i] ) delete wcase[$1]</span></div><div class='line' id='LC111'><span class="s2">     if( tolower($1) !~ tolower(a[i]) ) delete nocase[$1]</span></div><div class='line' id='LC112'><span class="s2">    }</span></div><div class='line' id='LC113'><span class="s2">    if( wcase[$1] &gt; oldf ) {</span></div><div class='line' id='LC114'><span class="s2">     cx = $1</span></div><div class='line' id='LC115'><span class="s2">     oldf = wcase[$1]</span></div><div class='line' id='LC116'><span class="s2">    } else if( nocase[$1] &gt; noldf ) {</span></div><div class='line' id='LC117'><span class="s2">     ncx = $1</span></div><div class='line' id='LC118'><span class="s2">     noldf = nocase[$1]</span></div><div class='line' id='LC119'><span class="s2">    }</span></div><div class='line' id='LC120'><span class="s2">   }</span></div><div class='line' id='LC121'><span class="s2">   END {</span></div><div class='line' id='LC122'><span class="s2">    if( cx ) {</span></div><div class='line' id='LC123'><span class="s2">     output(wcase, cx, common(wcase, a, 0))</span></div><div class='line' id='LC124'><span class="s2">    } else if( ncx ) output(nocase, ncx, common(nocase, a, 1))</span></div><div class='line' id='LC125'><span class="s2">   }</span></div><div class='line' id='LC126'><span class="s2">  &#39; $datafile)&quot;</span></div><div class='line' id='LC127'>&nbsp;&nbsp;<span class="k">if</span> <span class="o">[</span> <span class="nv">$?</span> -gt 0 <span class="o">]</span>; <span class="k">then</span></div><div class='line' id='LC128'><span class="k">   </span>rm -f <span class="nv">$datafile</span>.tmp</div><div class='line' id='LC129'>&nbsp;&nbsp;<span class="k">else</span></div><div class='line' id='LC130'><span class="k">   </span>mv -f <span class="nv">$datafile</span>.tmp <span class="nv">$datafile</span></div><div class='line' id='LC131'>&nbsp;&nbsp;&nbsp;<span class="o">[</span> <span class="s2">&quot;$cd&quot;</span> <span class="o">]</span> <span class="o">&amp;&amp;</span> <span class="nb">cd</span> <span class="s2">&quot;$cd&quot;</span></div><div class='line' id='LC132'>&nbsp;&nbsp;<span class="k">fi</span></div><div class='line' id='LC133'><span class="k"> fi</span></div><div class='line' id='LC134'><span class="o">}</span></div><div class='line' id='LC135'><span class="c"># tab completion</span></div><div class='line' id='LC136'><span class="c"># complete -C &#39;z --complete &quot;$COMP_LINE&quot;&#39; z</span></div></pre></div>
          </td>
        </tr>
      </table>
  </div>

          </div>
        </div>

        <a href="#jump-to-line" rel="facebox" data-hotkey="l" class="js-jump-to-line" style="display:none">Jump to Line</a>
        <div id="jump-to-line" style="display:none">
          <h2>Jump to Line</h2>
          <form accept-charset="UTF-8" class="js-jump-to-line-form">
            <input class="textfield js-jump-to-line-field" type="text">
            <div class="full-button">
              <button type="submit" class="button">Go</button>
            </div>
          </form>
        </div>

      </div>
    </div>
</div>

<div id="js-frame-loading-template" class="frame frame-loading large-loading-area" style="display:none;">
  <img class="js-frame-loading-spinner" src="https://a248.e.akamai.net/assets.github.com/images/spinners/octocat-spinner-128.gif?1359500886" height="64" width="64">
</div>


        </div>
      </div>
      <div class="context-overlay"></div>
    </div>

      <div id="footer-push"></div><!-- hack for sticky footer -->
    </div><!-- end of wrapper - hack for sticky footer -->

      <!-- footer -->
      <div id="footer">
  <div class="container clearfix">

      <dl class="footer_nav">
        <dt>GitHub</dt>
        <dd><a href="https://github.com/about">About us</a></dd>
        <dd><a href="https://github.com/blog">Blog</a></dd>
        <dd><a href="https://github.com/contact">Contact &amp; support</a></dd>
        <dd><a href="http://enterprise.github.com/">GitHub Enterprise</a></dd>
        <dd><a href="http://status.github.com/">Site status</a></dd>
      </dl>

      <dl class="footer_nav">
        <dt>Applications</dt>
        <dd><a href="http://mac.github.com/">GitHub for Mac</a></dd>
        <dd><a href="http://windows.github.com/">GitHub for Windows</a></dd>
        <dd><a href="http://eclipse.github.com/">GitHub for Eclipse</a></dd>
        <dd><a href="http://mobile.github.com/">GitHub mobile apps</a></dd>
      </dl>

      <dl class="footer_nav">
        <dt>Services</dt>
        <dd><a href="http://get.gaug.es/">Gauges: Web analytics</a></dd>
        <dd><a href="http://speakerdeck.com">Speaker Deck: Presentations</a></dd>
        <dd><a href="https://gist.github.com">Gist: Code snippets</a></dd>
        <dd><a href="http://jobs.github.com/">Job board</a></dd>
      </dl>

      <dl class="footer_nav">
        <dt>Documentation</dt>
        <dd><a href="http://help.github.com/">GitHub Help</a></dd>
        <dd><a href="http://developer.github.com/">Developer API</a></dd>
        <dd><a href="http://github.github.com/github-flavored-markdown/">GitHub Flavored Markdown</a></dd>
        <dd><a href="http://pages.github.com/">GitHub Pages</a></dd>
      </dl>

      <dl class="footer_nav">
        <dt>More</dt>
        <dd><a href="http://training.github.com/">Training</a></dd>
        <dd><a href="https://github.com/edu">Students &amp; teachers</a></dd>
        <dd><a href="http://shop.github.com">The Shop</a></dd>
        <dd><a href="/plans">Plans &amp; pricing</a></dd>
        <dd><a href="http://octodex.github.com/">The Octodex</a></dd>
      </dl>

      <hr class="footer-divider">


    <p class="right">&copy; 2013 <span title="0.10952s from fe19.rs.github.com">GitHub</span>, Inc. All rights reserved.</p>
    <a class="left" href="https://github.com/">
      <span class="mega-icon mega-icon-invertocat"></span>
    </a>
    <ul id="legal">
        <li><a href="https://github.com/site/terms">Terms of Service</a></li>
        <li><a href="https://github.com/site/privacy">Privacy</a></li>
        <li><a href="https://github.com/security">Security</a></li>
    </ul>

  </div><!-- /.container -->

</div><!-- /.#footer -->


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-fullscreen-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="js-fullscreen-contents" placeholder="" data-suggester="fullscreen_suggester"></textarea>
          <div class="suggester-container">
              <div class="suggester fullscreen-suggester js-navigation-container" id="fullscreen_suggester"
                 data-url="/sjl/z-zsh/suggestions/commit">
              </div>
          </div>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped leftwards" title="Exit Zen Mode">
      <span class="mega-icon mega-icon-normalscreen"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped leftwards"
      title="Switch themes">
      <span class="mini-icon mini-icon-brightness"></span>
    </a>
  </div>
</div>



    <div id="ajax-error-message" class="flash flash-error">
      <span class="mini-icon mini-icon-exclamation"></span>
      Something went wrong with that request. Please try again.
      <a href="#" class="mini-icon mini-icon-remove-close ajax-error-dismiss"></a>
    </div>

    
    
    <span id='server_response_time' data-time='0.11007' data-host='fe19'></span>
    
  </body>
</html>

