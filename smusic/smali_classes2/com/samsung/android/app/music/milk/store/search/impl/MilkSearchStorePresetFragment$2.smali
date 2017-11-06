.class Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$2;
.super Ljava/lang/Object;
.source "MilkSearchStorePresetFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$IHandlerMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->hideKeyboardAndCursor(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;

    .prologue
    .line 525
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 528
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$2;->val$context:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$2;->val$view:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 529
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$2;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 530
    .local v1, "rootView":Landroid/view/View;
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$2;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    .line 531
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 532
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 533
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 535
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v1    # "rootView":Landroid/view/View;
    :cond_0
    return-void
.end method
