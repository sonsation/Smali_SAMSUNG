.class Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$4;
.super Ljava/lang/Object;
.source "SeslSearchView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
    .line 366
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 369
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;

    invoke-interface {v0, v1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 372
    :cond_0
    return-void
.end method
