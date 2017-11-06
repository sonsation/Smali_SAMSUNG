.class Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$13;
.super Ljava/lang/Object;
.source "SeslRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 3018
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$13;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3021
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$13;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$3700(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)V

    .line 3022
    return-void
.end method
