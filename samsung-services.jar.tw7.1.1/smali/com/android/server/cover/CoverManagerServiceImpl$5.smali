.class Lcom/android/server/cover/CoverManagerServiceImpl$5;
.super Ljava/lang/Object;
.source "CoverManagerServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/cover/CoverManagerServiceImpl;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/CoverManagerServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/cover/CoverManagerServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/cover/CoverManagerServiceImpl;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/server/cover/CoverManagerServiceImpl$5;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 173
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl$5;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerServiceImpl;->-get2(Lcom/android/server/cover/CoverManagerServiceImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportSmartCover()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->getTestCoverType()I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl$5;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-static {v0, v2, v3}, Lcom/android/server/cover/CoverManagerServiceImpl;->-wrap2(Lcom/android/server/cover/CoverManagerServiceImpl;ZLcom/samsung/android/cover/CoverState;)V

    .line 172
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl$5;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    const/4 v1, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/android/server/cover/CoverManagerServiceImpl;->-wrap3(Lcom/android/server/cover/CoverManagerServiceImpl;ZZLcom/samsung/android/cover/CoverState;)V

    goto :goto_0
.end method
