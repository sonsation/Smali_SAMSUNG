.class Lcom/samsung/android/app/music/common/widget/NoItemBubbleView$2;
.super Ljava/lang/Object;
.source "NoItemBubbleView.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/widget/NoItemBubbleView$OnLazyInitCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView$2;->this$0:Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView$2;->this$0:Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->show()V

    .line 117
    return-void
.end method
