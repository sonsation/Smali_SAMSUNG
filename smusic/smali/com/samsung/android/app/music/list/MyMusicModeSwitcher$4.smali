.class Lcom/samsung/android/app/music/list/MyMusicModeSwitcher$4;
.super Ljava/lang/Object;
.source "MyMusicModeSwitcher.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;
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
    .line 137
    iput-object p1, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher$4;->this$0:Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrimaryColorChanged(I)V
    .locals 1
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher$4;->this$0:Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->access$400(Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;I)V

    .line 141
    return-void
.end method
