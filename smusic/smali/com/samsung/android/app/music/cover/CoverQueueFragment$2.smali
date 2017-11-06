.class Lcom/samsung/android/app/music/cover/CoverQueueFragment$2;
.super Ljava/lang/Object;
.source "CoverQueueFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/cover/CoverQueueFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/cover/CoverQueueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment$2;->this$0:Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment$2;->this$0:Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->access$000(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)V

    .line 154
    return-void
.end method
