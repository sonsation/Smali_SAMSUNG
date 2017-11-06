.class Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$3;
.super Ljava/lang/Object;
.source "RadioMainDownloadMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->updateBtnResource(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$3;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;

    iput-boolean p2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$3;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$3;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->access$200(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$3;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->access$200(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$3;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->access$200(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$3;->val$enable:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$3;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->access$200(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;)Landroid/view/View;

    move-result-object v1

    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$3;->val$enable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$3;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->mDownloadListener:Landroid/view/View$OnClickListener;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    :cond_0
    return-void

    .line 142
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
