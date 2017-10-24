.class public Landroid/widget/SearchView$SearchAutoComplete;
.super Landroid/widget/AutoCompleteTextView;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchAutoComplete"
.end annotation


# instance fields
.field private mSearchView:Landroid/widget/SearchView;

.field private mThreshold:I


# direct methods
.method static synthetic -wrap0(Landroid/widget/SearchView$SearchAutoComplete;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/SearchView$SearchAutoComplete;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2059
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 2060
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getThreshold()I

    move-result v0

    iput v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mThreshold:I

    .line 2058
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2064
    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2065
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getThreshold()I

    move-result v0

    iput v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mThreshold:I

    .line 2063
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttrs"    # I

    .prologue
    .line 2069
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2070
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getThreshold()I

    move-result v0

    iput v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mThreshold:I

    .line 2068
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttrs"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 2075
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2076
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getThreshold()I

    move-result v0

    iput v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mThreshold:I

    .line 2074
    return-void
.end method

.method private getSearchViewTextMinWidthDp()I
    .locals 5

    .prologue
    .line 2211
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2212
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 2213
    .local v3, "width":I
    iget v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2214
    .local v1, "height":I
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    .line 2215
    .local v2, "orientation":I
    const/16 v4, 0x3c0

    if-lt v3, v4, :cond_0

    const/16 v4, 0x2d0

    if-lt v1, v4, :cond_0

    .line 2216
    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 2217
    const/16 v4, 0x100

    return v4

    .line 2218
    :cond_0
    const/16 v4, 0x258

    if-ge v3, v4, :cond_1

    const/16 v4, 0x280

    if-lt v3, v4, :cond_2

    const/16 v4, 0x1e0

    if-lt v1, v4, :cond_2

    .line 2219
    :cond_1
    const/16 v4, 0xc0

    return v4

    .line 2221
    :cond_2
    const/16 v4, 0xa0

    return v4
.end method

.method private isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2101
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public enoughToFilter()Z
    .locals 1

    .prologue
    .line 2170
    iget v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mThreshold:I

    if-lez v0, :cond_0

    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 2081
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->onFinishInflate()V

    .line 2082
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2084
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-direct {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getSearchViewTextMinWidthDp()I

    move-result v1

    int-to-float v1, v1

    .line 2083
    const/4 v2, 0x1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setMinWidth(I)V

    .line 2080
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2160
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2161
    iget-object v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onTextFocusChanged()V

    .line 2159
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2178
    iget-object v1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/widget/SearchView;

    invoke-static {v1}, Landroid/widget/SearchView;->-get2(Landroid/widget/SearchView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2179
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 2181
    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    .line 2184
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 2185
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 2186
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_1

    .line 2187
    invoke-virtual {v0, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 2189
    :cond_1
    return v3

    .line 2190
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 2191
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 2192
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_3

    .line 2193
    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 2195
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2204
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 2196
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_5
    iget-object v1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/widget/SearchView;

    invoke-static {v1}, Landroid/widget/SearchView;->-get2(Landroid/widget/SearchView;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2197
    iget-object v1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 2198
    iget-object v1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/widget/SearchView;

    invoke-static {v1, v2}, Landroid/widget/SearchView;->-wrap11(Landroid/widget/SearchView;Z)V

    .line 2199
    return v3
.end method

.method public onWindowFocusChanged(Z)V
    .locals 6
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v5, 0x0

    .line 2128
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onWindowFocusChanged(Z)V

    .line 2138
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2139
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v2

    .line 2140
    .local v2, "mKeyboard":I
    if-eqz v2, :cond_0

    .line 2143
    return-void

    .line 2146
    :cond_0
    if-eqz p1, :cond_1

    iget-object v3, p0, Landroid/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 2148
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 2149
    .local v1, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1, p0, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 2152
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/widget/SearchView;->isLandscapeMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2153
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/widget/SearchView$SearchAutoComplete;->ensureImeVisible(Z)V

    .line 2127
    .end local v1    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    return-void
.end method

.method public performCompletion()V
    .locals 0

    .prologue
    .line 2119
    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 2109
    return-void
.end method

.method setSearchView(Landroid/widget/SearchView;)V
    .locals 0
    .param p1, "searchView"    # Landroid/widget/SearchView;

    .prologue
    .line 2088
    iput-object p1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/widget/SearchView;

    .line 2087
    return-void
.end method

.method public setThreshold(I)V
    .locals 0
    .param p1, "threshold"    # I

    .prologue
    .line 2093
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 2094
    iput p1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mThreshold:I

    .line 2092
    return-void
.end method
