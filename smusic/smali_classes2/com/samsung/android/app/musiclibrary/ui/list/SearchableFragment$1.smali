.class Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$1;
.super Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;
.source "SearchableFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;

    .prologue
    .line 62
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$1;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$1;"
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)V
    .locals 4
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 65
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$1;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$1;"
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 66
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->SUPPORT_MINIMIZED_SIP:Z

    if-eqz v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    .line 68
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 69
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;

    .line 70
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/app/musiclibrary/R$integer;->minimize_Size_Of_Soft_Input:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 69
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/support/android/view/inputmethod/InputMethodManagerCompat;->minimizeSoftInput(Landroid/view/inputmethod/InputMethodManager;Landroid/os/IBinder;I)Z

    .line 76
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->hideKeyboardAndCursor()V

    goto :goto_0
.end method

.method public onScrolled(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;II)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 80
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$1;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$1;"
    return-void
.end method
