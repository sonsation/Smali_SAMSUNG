.class Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback$1;
.super Ljava/lang/Object;
.source "SeslDrawerLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;

    .prologue
    .line 2043
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback$1;->this$1:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2045
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback$1;->this$1:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->peekDrawer()V

    .line 2046
    return-void
.end method
