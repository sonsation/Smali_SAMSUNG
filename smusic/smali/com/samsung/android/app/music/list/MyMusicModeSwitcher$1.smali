.class Lcom/samsung/android/app/music/list/MyMusicModeSwitcher$1;
.super Ljava/lang/Object;
.source "MyMusicModeSwitcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;-><init>(Landroid/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher$1;->this$0:Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher$1;->this$0:Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->access$000(Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;)Landroid/widget/Switch;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher$1;->this$0:Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->access$000(Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 68
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
