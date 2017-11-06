.class public Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;
.super Ljava/lang/Object;
.source "SearchViewImpl.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;
    }
.end annotation


# static fields
.field private static final DISABLE_VOICE_INPUT_FLAG:Ljava/lang/String; = "disableVoiceInput=true"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mHintSubmitObserver:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;

.field private final mOnQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

.field private final mOnQueryTextObserver:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;

.field private final mSearchView:Landroid/widget/SearchView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->mOnQueryTextObserver:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;

    .line 41
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->mHintSubmitObserver:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;

    .line 90
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->mOnQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    .line 44
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->mActivity:Landroid/app/Activity;

    .line 45
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->createSearchView()Landroid/widget/SearchView;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->mSearchView:Landroid/widget/SearchView;

    .line 46
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;)Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->mOnQueryTextObserver:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;)Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->mHintSubmitObserver:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method private createSearchView()Landroid/widget/SearchView;
    .locals 17

    .prologue
    .line 121
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->mActivity:Landroid/app/Activity;

    const-string v14, "layout_inflater"

    .line 122
    invoke-virtual {v13, v14}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 123
    .local v4, "inflater":Landroid/view/LayoutInflater;
    sget v13, Lcom/samsung/android/app/musiclibrary/R$layout;->search_action_view:I

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 124
    .local v12, "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    .line 125
    .local v2, "bar":Landroid/app/ActionBar;
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 126
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 128
    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x1

    invoke-direct {v5, v13, v14}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 130
    .local v5, "lp":Landroid/app/ActionBar$LayoutParams;
    invoke-virtual {v2, v12, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 132
    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/SearchView;

    .line 134
    .local v11, "searchView":Landroid/widget/SearchView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 135
    .local v3, "context":Landroid/content/Context;
    const-string/jumbo v13, "search"

    .line 136
    invoke-virtual {v3, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/SearchManager;

    .line 137
    .local v9, "searchManager":Landroid/app/SearchManager;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 138
    invoke-virtual {v11}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 140
    invoke-virtual {v11}, Landroid/widget/SearchView;->clearFocus()V

    .line 144
    invoke-virtual {v11}, Landroid/widget/SearchView;->requestFocus()Z

    .line 145
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->mOnQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v11, v13}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 146
    invoke-virtual {v11}, Landroid/widget/SearchView;->getImeOptions()I

    move-result v13

    or-int/lit8 v13, v13, 0x3

    invoke-virtual {v11, v13}, Landroid/widget/SearchView;->setImeOptions(I)V

    .line 147
    new-instance v13, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;)V

    invoke-virtual {v11, v13}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 154
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->getSearchTextView(Landroid/widget/SearchView;)Landroid/widget/EditText;

    move-result-object v10

    .line 155
    .local v10, "searchTextView":Landroid/widget/EditText;
    if-eqz v10, :cond_0

    .line 156
    const-string v13, "disableVoiceInput=true"

    invoke-virtual {v10, v13}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 157
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->getOnSubmitQueryMethod()Ljava/lang/reflect/Method;

    move-result-object v6

    .line 158
    .local v6, "method":Ljava/lang/reflect/Method;
    if-eqz v6, :cond_0

    .line 159
    new-instance v13, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v6}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$3;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;Ljava/lang/reflect/Method;)V

    invoke-virtual {v10, v13}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 179
    .end local v6    # "method":Ljava/lang/reflect/Method;
    :cond_0
    invoke-static {v3, v11}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->setMaxSearchLength(Landroid/content/Context;Landroid/widget/SearchView;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->mActivity:Landroid/app/Activity;

    invoke-static {v13}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getActionBarView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    .line 183
    .local v1, "actionBarView":Landroid/view/View;
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v1, v13, v14, v15, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 186
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->getSearchFlateView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v8

    .line 188
    .local v8, "searchFlateView":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 189
    .local v7, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 190
    invoke-virtual {v8, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    return-object v11
.end method

.method private getOnSubmitQueryMethod()Ljava/lang/reflect/Method;
    .locals 6

    .prologue
    .line 211
    :try_start_0
    const-string v3, "android.widget.SearchView"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 212
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "onSubmitQuery"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 213
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 218
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v2

    .line 214
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const-string v3, "UiList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOnSubmitQueryMethod failed | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const/4 v2, 0x0

    .restart local v2    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 214
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private getSearchFlateView(Landroid/app/Activity;)Landroid/view/View;
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 203
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 204
    .local v0, "decorView":Landroid/view/View;
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "search_plate"

    const-string v4, "id"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 205
    .local v1, "resId":I
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method private getSearchTextView(Landroid/widget/SearchView;)Landroid/widget/EditText;
    .locals 4
    .param p1, "searchView"    # Landroid/widget/SearchView;

    .prologue
    const/4 v3, 0x0

    .line 196
    .line 197
    invoke-virtual {p1}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "android:id/search_src_text"

    .line 198
    invoke-virtual {v1, v2, v3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 196
    invoke-virtual {p1, v1}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 199
    .local v0, "searchTextView":Landroid/widget/EditText;
    return-object v0
.end method


# virtual methods
.method public addOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/SearchView$OnQueryTextListener;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->mOnQueryTextObserver:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;->add(Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method public addOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;Z)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/SearchView$OnQueryTextListener;
    .param p2, "hintSubmit"    # Z

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->mOnQueryTextObserver:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;->add(Ljava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->mHintSubmitObserver:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;->add(Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQueryHint()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getQueryText()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 68
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    .line 69
    .local v0, "query":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 70
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public removeOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/SearchView$OnQueryTextListener;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->mOnQueryTextObserver:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;->remove(Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->mHintSubmitObserver:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;->remove(Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 88
    return-void
.end method

.method public setQueryText(Ljava/lang/String;)V
    .locals 2
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 78
    return-void
.end method
