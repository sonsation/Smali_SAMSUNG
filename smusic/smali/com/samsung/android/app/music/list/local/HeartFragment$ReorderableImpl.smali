.class Lcom/samsung/android/app/music/list/local/HeartFragment$ReorderableImpl;
.super Ljava/lang/Object;
.source "HeartFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/HeartFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReorderableImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V
    .locals 0

    .prologue
    .line 677
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$ReorderableImpl;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/list/local/HeartFragment;Lcom/samsung/android/app/music/list/local/HeartFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/list/local/HeartFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/music/list/local/HeartFragment$1;

    .prologue
    .line 677
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/HeartFragment$ReorderableImpl;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V

    return-void
.end method


# virtual methods
.method public moveItem(II)V
    .locals 3
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 680
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$ReorderableImpl;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "HTIT"

    const-string v2, "Reorder"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$ReorderableImpl;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Hearts;->moveItem(Landroid/content/Context;II)Z

    .line 683
    return-void
.end method
