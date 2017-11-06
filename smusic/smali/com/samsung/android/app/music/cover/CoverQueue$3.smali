.class Lcom/samsung/android/app/music/cover/CoverQueue$3;
.super Ljava/lang/Object;
.source "CoverQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/cover/CoverQueue;->scrollToPosition(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/cover/CoverQueue;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/cover/CoverQueue;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/cover/CoverQueue;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/samsung/android/app/music/cover/CoverQueue$3;->this$0:Lcom/samsung/android/app/music/cover/CoverQueue;

    iput p2, p0, Lcom/samsung/android/app/music/cover/CoverQueue$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueue$3;->this$0:Lcom/samsung/android/app/music/cover/CoverQueue;

    invoke-static {v0}, Lcom/samsung/android/app/music/cover/CoverQueue;->access$100(Lcom/samsung/android/app/music/cover/CoverQueue;)Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/cover/CoverQueue$3;->val$position:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 169
    return-void
.end method
