.class Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller$1;
.super Ljava/lang/Object;
.source "SeslFastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;I)V

    .line 240
    return-void
.end method
