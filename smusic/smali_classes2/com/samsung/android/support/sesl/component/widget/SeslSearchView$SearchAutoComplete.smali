.class public Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;
.super Landroid/widget/AutoCompleteTextView;
.source "SeslSearchView.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchAutoComplete"
.end annotation


# instance fields
.field private mSearchView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;

.field private mThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1928
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1929
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1932
    const v0, 0x101006b

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1933
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 1936
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1937
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->getThreshold()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->mThreshold:I

    .line 1938
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;

    .prologue
    .line 1922
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private getSearchViewTextMinWidthDp()I
    .locals 5

    .prologue
    .line 2030
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2031
    .local v0, "config":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 2032
    .local v2, "widthDp":I
    iget v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2034
    .local v1, "heightDp":I
    const/16 v3, 0x3c0

    if-lt v2, v3, :cond_0

    const/16 v3, 0x2d0

    if-lt v1, v3, :cond_0

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 2036
    const/16 v3, 0x100

    .line 2040
    :goto_0
    return v3

    .line 2037
    :cond_0
    const/16 v3, 0x258

    if-ge v2, v3, :cond_1

    const/16 v3, 0x280

    if-lt v2, v3, :cond_2

    const/16 v3, 0x1e0

    if-lt v1, v3, :cond_2

    .line 2038
    :cond_1
    const/16 v3, 0xc0

    goto :goto_0

    .line 2040
    :cond_2
    const/16 v3, 0xa0

    goto :goto_0
.end method

.method private isEmpty()Z
    .locals 1

    .prologue
    .line 1962
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public enoughToFilter()Z
    .locals 1

    .prologue
    .line 2015
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->mThreshold:I

    if-lez v0, :cond_0

    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 1942
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->onFinishInflate()V

    .line 1943
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1944
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const/4 v1, 0x1

    .line 1945
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->getSearchViewTextMinWidthDp()I

    move-result v2

    int-to-float v2, v2

    .line 1944
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->setMinWidth(I)V

    .line 1946
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2005
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2006
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->mSearchView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->onTextFocusChanged()V

    .line 2007
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2023
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 1989
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onWindowFocusChanged(Z)V

    .line 1991
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->mSearchView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1992
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    .line 1993
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1994
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1997
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->isLandscapeMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1998
    sget-object v1, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->HIDDEN_METHOD_INVOKER:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$AutoCompleteTextViewReflector;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$AutoCompleteTextViewReflector;->ensureImeVisible(Landroid/widget/AutoCompleteTextView;Z)V

    .line 2001
    .end local v0    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method public performCompletion()V
    .locals 0

    .prologue
    .line 1981
    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1971
    return-void
.end method

.method setSearchView(Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;)V
    .locals 0
    .param p1, "searchView"    # Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;

    .prologue
    .line 1949
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->mSearchView:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;

    .line 1950
    return-void
.end method

.method public setThreshold(I)V
    .locals 0
    .param p1, "threshold"    # I

    .prologue
    .line 1954
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 1955
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$SearchAutoComplete;->mThreshold:I

    .line 1956
    return-void
.end method
