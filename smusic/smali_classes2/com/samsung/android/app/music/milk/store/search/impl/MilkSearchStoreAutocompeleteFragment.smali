.class public Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;
.super Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;
.source "MilkSearchStoreAutocompeleteFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/IMilkSearchStoreAutocompletePresenter;
.implements Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "MilkSearchStoreAutocompeleteFragment"


# instance fields
.field private initialize:Z

.field private isClickedAutoComplete:Z

.field private mAutoCompleteHandler:Landroid/os/Handler;

.field private mCallback:Lcom/samsung/android/app/music/milk/store/search/IMilkSearchStoreFragment;

.field private mGuideText:Landroid/widget/TextView;

.field private mKeyword:Ljava/lang/String;

.field private mLoadAutoComplete:Ljava/lang/Runnable;

.field private mLoadingBar:Landroid/widget/ProgressBar;

.field private mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

.field private mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

.field private mSearchAutoCompleteAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAutoKeywordAdapter;

.field private mSearchAutoCompletePresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/MilkSearchStoreAutocompletePresenter;

.field private mainContent:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;)Lcom/samsung/android/app/music/milk/store/search/IMilkSearchStoreFragment;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mCallback:Lcom/samsung/android/app/music/milk/store/search/IMilkSearchStoreFragment;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->isClickedAutoComplete:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;)Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAutoKeywordAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mSearchAutoCompleteAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAutoKeywordAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;)Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mGuideText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mKeyword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;)Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/MilkSearchStoreAutocompletePresenter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mSearchAutoCompletePresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/MilkSearchStoreAutocompletePresenter;

    return-object v0
.end method

.method private loadSearchAutoCompletes()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 312
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mAutoCompleteHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 313
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mAutoCompleteHandler:Landroid/os/Handler;

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->hide()V

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mLoadAutoComplete:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 321
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->showLoading(Z)V

    .line 322
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mAutoCompleteHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mLoadAutoComplete:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 323
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mLoadAutoComplete:Ljava/lang/Runnable;

    .line 326
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mKeyword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 327
    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->showAutocompleteLayout(Z)V

    .line 350
    :goto_0
    return-void

    .line 329
    :cond_3
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->showAutocompleteLayout(Z)V

    .line 330
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mSearchAutoCompleteAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAutoKeywordAdapter;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAutoKeywordAdapter;->clear(Z)V

    .line 331
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment$2;-><init>(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mLoadAutoComplete:Ljava/lang/Runnable;

    .line 347
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->showLoading(Z)V

    .line 348
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mAutoCompleteHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mLoadAutoComplete:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static newInstance()Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;
    .locals 2

    .prologue
    .line 76
    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;-><init>()V

    .line 77
    .local v1, "fragment":Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 78
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->setArguments(Landroid/os/Bundle;)V

    .line 79
    return-object v1
.end method

.method private replaceBaseFragment()V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mCallback:Lcom/samsung/android/app/music/milk/store/search/IMilkSearchStoreFragment;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mCallback:Lcom/samsung/android/app/music/milk/store/search/IMilkSearchStoreFragment;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/search/IMilkSearchStoreFragment;->replaceBaseFragment()V

    .line 368
    :cond_0
    return-void
.end method

.method private restoreMilkAutoCompleteSearchStoreFragment(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 306
    if-eqz p1, :cond_0

    .line 307
    const-string v0, "mKeyword"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mKeyword:Ljava/lang/String;

    .line 309
    :cond_0
    return-void
.end method

.method private showAutocompleteLayout(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 371
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mCallback:Lcom/samsung/android/app/music/milk/store/search/IMilkSearchStoreFragment;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mCallback:Lcom/samsung/android/app/music/milk/store/search/IMilkSearchStoreFragment;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/milk/store/search/IMilkSearchStoreFragment;->setAutocompleteVisibility(Z)V

    .line 374
    :cond_0
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected final hideKeyboardAndCursor(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 377
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 378
    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 379
    .local v1, "rootView":Landroid/view/View;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    .line 380
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 381
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 382
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 384
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v1    # "rootView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->restoreMilkAutoCompleteSearchStoreFragment(Landroid/os/Bundle;)V

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mKeyword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mKeyword:Ljava/lang/String;

    .line 95
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->initialize:Z

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->isClickedAutoComplete:Z

    .line 98
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/MilkSearchStoreAutocompletePresenter;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/MilkSearchStoreAutocompletePresenter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mSearchAutoCompletePresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/MilkSearchStoreAutocompletePresenter;

    .line 99
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAutoKeywordAdapter;

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mKeyword:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAutoKeywordAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mSearchAutoCompleteAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAutoKeywordAdapter;

    .line 102
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 107
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 108
    const v1, 0x7f040183

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 110
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mSearchAutoCompletePresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/MilkSearchStoreAutocompletePresenter;

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mSearchAutoCompletePresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/MilkSearchStoreAutocompletePresenter;

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/MilkSearchStoreAutocompletePresenter;->attachView(Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/IMilkSearchStoreAutocompletePresenter;)V

    .line 114
    :cond_0
    const v1, 0x7f1202b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    .line 115
    const v1, 0x7f1202cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mainContent:Landroid/view/View;

    .line 116
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    if-eqz v1, :cond_1

    .line 117
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/network/NetworkManager;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mainContent:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, p0, v3, v4}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->initialize(Lcom/samsung/android/app/music/network/NetworkManager;Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;Landroid/view/View;Z)V

    .line 120
    :cond_1
    const v1, 0x7f120465

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mGuideText:Landroid/widget/TextView;

    .line 121
    const v1, 0x7f120371

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    .line 122
    const v1, 0x7f12027e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mLoadingBar:Landroid/widget/ProgressBar;

    .line 123
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    const v2, 0x7f120466

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 125
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mSearchAutoCompleteAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAutoKeywordAdapter;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 126
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    new-instance v2, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;->setOnItemClickListener(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnItemClickListener;)V

    .line 160
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 191
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onDestroy()V

    .line 193
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 195
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mAutoCompleteHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mAutoCompleteHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 200
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mAutoCompleteHandler:Landroid/os/Handler;

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mLoadAutoComplete:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 204
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mLoadAutoComplete:Ljava/lang/Runnable;

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mCallback:Lcom/samsung/android/app/music/milk/store/search/IMilkSearchStoreFragment;

    if-eqz v0, :cond_3

    .line 208
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mCallback:Lcom/samsung/android/app/music/milk/store/search/IMilkSearchStoreFragment;

    .line 211
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mSearchAutoCompletePresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/MilkSearchStoreAutocompletePresenter;

    if-eqz v0, :cond_4

    .line 212
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mSearchAutoCompletePresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/MilkSearchStoreAutocompletePresenter;

    .line 214
    :cond_4
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mSearchAutoCompletePresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/MilkSearchStoreAutocompletePresenter;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mSearchAutoCompletePresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/MilkSearchStoreAutocompletePresenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/MilkSearchStoreAutocompletePresenter;->detachView()V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->destroy()V

    .line 186
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onDestroyView()V

    .line 187
    return-void
.end method

.method public onRetry()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->hide()V

    .line 357
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->loadSearchAutoCompletes()V

    .line 358
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 172
    if-eqz p1, :cond_0

    .line 173
    const-string v0, "mKeyword"

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mKeyword:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 299
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 300
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->initialize:Z

    if-eqz v0, :cond_0

    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->initialize:Z

    .line 303
    :cond_0
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 165
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 166
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->restoreMilkAutoCompleteSearchStoreFragment(Landroid/os/Bundle;)V

    .line 167
    return-void
.end method

.method public primaryColorChanged(I)V
    .locals 1
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mSearchAutoCompleteAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAutoKeywordAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAutoKeywordAdapter;->updatePrimaryColor(I)V

    .line 85
    return-void
.end method

.method public setCallback(Lcom/samsung/android/app/music/milk/store/search/IMilkSearchStoreFragment;)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/android/app/music/milk/store/search/IMilkSearchStoreFragment;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mCallback:Lcom/samsung/android/app/music/milk/store/search/IMilkSearchStoreFragment;

    .line 362
    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 2
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 283
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mKeyword:Ljava/lang/String;

    .line 285
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mSearchAutoCompleteAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAutoKeywordAdapter;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mSearchAutoCompleteAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAutoKeywordAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAutoKeywordAdapter;->setKeyword(Ljava/lang/String;)V

    .line 288
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->isClickedAutoComplete:Z

    if-eqz v0, :cond_1

    .line 289
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->showAutocompleteLayout(Z)V

    .line 290
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->isClickedAutoComplete:Z

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->loadSearchAutoCompletes()V

    goto :goto_0
.end method

.method public showContents(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 223
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 224
    :cond_0
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->showAutocompleteLayout(Z)V

    .line 225
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->replaceBaseFragment()V

    .line 247
    :cond_1
    :goto_0
    return-void

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mainContent:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mainContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 232
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mainContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 235
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    if-eqz v0, :cond_4

    .line 236
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;->CACHED:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->switchMode(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;)V

    .line 239
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 240
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 241
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mSearchAutoCompleteAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAutoKeywordAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAutoKeywordAdapter;->clear(Z)V

    goto :goto_0

    .line 243
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mSearchAutoCompleteAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAutoKeywordAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAutoKeywordAdapter;->swapArray(Ljava/util/List;)V

    goto :goto_0
.end method

.method public showError(IILjava/lang/String;)V
    .locals 1
    .param p1, "rspType"    # I
    .param p2, "errorCode"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 259
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->showAutocompleteLayout(Z)V

    .line 260
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->replaceBaseFragment()V

    .line 280
    return-void
.end method

.method public showLoading(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 251
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mLoadingBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 252
    const-string v0, "MilkSearchStoreAutocompeleteFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showLoading : show - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->mLoadingBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 255
    :cond_0
    return-void

    .line 253
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
