.class Lcom/android/launcher3/common/base/view/BaseContainerView$1;
.super Ljava/lang/Object;
.source "BaseContainerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/base/view/BaseContainerView;->setSearchBarBounds(Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/base/view/BaseContainerView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/base/view/BaseContainerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/base/view/BaseContainerView;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/launcher3/common/base/view/BaseContainerView$1;->this$0:Lcom/android/launcher3/common/base/view/BaseContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/BaseContainerView$1;->this$0:Lcom/android/launcher3/common/base/view/BaseContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/BaseContainerView;->updateBackgroundAndPaddings()V

    .line 83
    return-void
.end method
