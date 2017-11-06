.class public Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup;
.super Ljava/lang/Object;
.source "PlayerMenuGroup.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$LocalGoArtistMenuItem;,
        Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$MilkGoAlbumMenuItem;,
        Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$LocalGoAlbumMenuItem;,
        Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mMenuResId:I

.field private final mMusicMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    const-class v0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup;->TAG:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;I)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "menuResId"    # I

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup;->mMusicMenus:Ljava/util/ArrayList;

    .line 67
    iput p2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup;->mMenuResId:I

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup;->mMusicMenus:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup;->mMusicMenus:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/app/music/common/menu/LaunchMenu;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/music/common/menu/LaunchMenu;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup;->mMusicMenus:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/app/music/common/menu/ShareMenu;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/music/common/menu/ShareMenu;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup;->mMusicMenus:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static sendSamsungAnalyticsLog(Ljava/lang/String;)V
    .locals 2
    .param p0, "eventName"    # Ljava/lang/String;

    .prologue
    .line 535
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "301"

    .line 536
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    return-void
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 79
    iget v0, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup;->mMenuResId:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 80
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 91
    const/4 v0, 0x1

    .line 92
    .local v0, "handled":Z
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup;->mMusicMenus:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 93
    .local v1, "musicMenu":Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 94
    if-eqz v0, :cond_0

    .line 98
    .end local v1    # "musicMenu":Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;
    :cond_1
    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 84
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup;->mMusicMenus:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 85
    .local v0, "musicMenu":Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    goto :goto_0

    .line 87
    .end local v0    # "musicMenu":Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;
    :cond_0
    return-void
.end method
