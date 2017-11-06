.class Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$2;
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
    .line 204
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->updateFocusedState()V

    .line 208
    return-void
.end method
