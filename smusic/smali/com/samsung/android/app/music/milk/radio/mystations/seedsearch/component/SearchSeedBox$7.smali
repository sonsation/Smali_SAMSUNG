.class Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$7;
.super Ljava/lang/Object;
.source "SearchSeedBox.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->initSearchSeedText(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$7;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const/4 v3, 0x0

    .line 358
    const-string v0, "SearchSeedBox"

    const-string/jumbo v1, "onDismissed : Seed SearchBox - Focus is changed"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    if-eqz p2, :cond_1

    .line 360
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$7;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$300(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$7;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$300(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    move-result-object v0

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 372
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$7;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$1200(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;Z)V

    .line 374
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$7;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$500(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$7;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$500(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;->onSearchSeedBoxFocusChanged(Z)V

    .line 377
    :cond_0
    return-void

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$7;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$300(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 364
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$7;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$300(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$7;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$1000(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d060f

    .line 365
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 364
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->setCompoundDrawablePadding(I)V

    .line 366
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$7;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$300(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    move-result-object v0

    const v1, 0x7f020227

    invoke-virtual {v0, v1, v3, v3, v3}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 369
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$7;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$300(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox$7;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->access$1100(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
