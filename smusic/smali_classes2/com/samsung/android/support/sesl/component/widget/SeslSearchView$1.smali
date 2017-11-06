.class Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$1;
.super Ljava/lang/Object;
.source "SeslSearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 195
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;

    .line 196
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 198
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 199
    sget-object v1, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->HIDDEN_METHOD_INVOKER:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$AutoCompleteTextViewReflector;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$AutoCompleteTextViewReflector;->showSoftInputUnchecked(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;I)V

    .line 201
    :cond_0
    return-void
.end method
