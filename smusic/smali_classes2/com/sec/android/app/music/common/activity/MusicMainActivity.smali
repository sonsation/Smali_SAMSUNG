.class public final Lcom/sec/android/app/music/common/activity/MusicMainActivity;
.super Lcom/samsung/android/app/music/common/activity/MusicMainActivity;
.source "MusicMainActivity.java"


# static fields
.field public static final MAIN_ACTIVITY_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/sec/android/app/music/common/activity/MusicMainActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/common/activity/MusicMainActivity;->MAIN_ACTIVITY_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 61
    .local v0, "handled":Z
    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 73
    .local v0, "handled":Z
    return v0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->onResume()V

    .line 50
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->onStart()V

    .line 39
    return-void
.end method
