.class Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView$1;
.super Ljava/lang/Object;
.source "SeslAbsActionBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->postShowOverflowMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsActionBarView;->showOverflowMenu()Z

    .line 205
    return-void
.end method
