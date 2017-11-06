.class Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkDownloadableImpl$1;
.super Ljava/lang/Object;
.source "MilkQueueFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/util/task/SourceIdGetterTask$SourceIdResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkDownloadableImpl;->download()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkDownloadableImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkDownloadableImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkDownloadableImpl;

    .prologue
    .line 1069
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkDownloadableImpl$1;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkDownloadableImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult([Ljava/lang/String;)V
    .locals 1
    .param p1, "sourceIds"    # [Ljava/lang/String;

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkDownloadableImpl$1;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkDownloadableImpl;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkDownloadableImpl;->access$1500(Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkDownloadableImpl;[Ljava/lang/String;)V

    .line 1073
    return-void
.end method
