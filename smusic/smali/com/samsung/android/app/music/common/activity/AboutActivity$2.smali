.class Lcom/samsung/android/app/music/common/activity/AboutActivity$2;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/AboutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/activity/AboutActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/AboutActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/activity/AboutActivity;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/AboutActivity$2;->this$0:Lcom/samsung/android/app/music/common/activity/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(I)V
    .locals 2
    .param p1, "result"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/AboutActivity$2;->this$0:Lcom/samsung/android/app/music/common/activity/AboutActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->access$202(Lcom/samsung/android/app/music/common/activity/AboutActivity;Z)Z

    .line 70
    if-nez p1, :cond_1

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/AboutActivity$2;->this$0:Lcom/samsung/android/app/music/common/activity/AboutActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->access$300(Lcom/samsung/android/app/music/common/activity/AboutActivity;)V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/AboutActivity$2;->this$0:Lcom/samsung/android/app/music/common/activity/AboutActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->finish()V

    goto :goto_0
.end method
