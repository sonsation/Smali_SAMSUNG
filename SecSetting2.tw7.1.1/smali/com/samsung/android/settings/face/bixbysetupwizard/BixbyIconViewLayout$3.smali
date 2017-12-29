.class Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$3;
.super Ljava/lang/Object;
.source "BixbyIconViewLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$3;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x4

    .line 93
    iget-object v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$3;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-static {v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->-get4(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 94
    iget-object v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$3;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-static {v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->-get5(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 95
    return-void

    .line 97
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$3;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    const/4 v5, 0x3

    invoke-static {v4, v5, v6}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->-wrap0(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;II)I

    move-result v0

    .line 98
    .local v0, "bigCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 99
    iget-object v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$3;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-static {v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->-get0(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->addMidCircleBig()V

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$3;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    const/4 v5, 0x5

    invoke-static {v4, v5, v7}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->-wrap0(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;II)I

    move-result v2

    .line 102
    .local v2, "midCount":I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 103
    iget-object v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$3;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-static {v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->-get0(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->addMidCircleMid()V

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 105
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$3;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-static {v4, v6, v7}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->-wrap0(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;II)I

    move-result v3

    .line 106
    .local v3, "smallCount":I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_3

    .line 107
    iget-object v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$3;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-static {v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->-get0(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->addMidCircleSmall()V

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 109
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$3;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-static {v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->-get0(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->invalidate()V

    .line 110
    iget-object v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout$3;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-static {v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->-get5(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    return-void
.end method
