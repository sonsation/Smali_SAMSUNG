.class Lcom/samsung/android/app/music/list/local/MilkQueueFragment$5;
.super Ljava/lang/Object;
.source "MilkQueueFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkQueueFilterableImpl$OnChangedOptionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->setHeader(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    .prologue
    .line 567
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$5;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSortMode()I
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$5;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->access$700(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)I

    move-result v0

    return v0
.end method

.method public onChangedOption(I)V
    .locals 1
    .param p1, "sortMode"    # I

    .prologue
    .line 570
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$5;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->access$700(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 571
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->setSortMode(I)V

    .line 573
    :cond_0
    return-void
.end method
