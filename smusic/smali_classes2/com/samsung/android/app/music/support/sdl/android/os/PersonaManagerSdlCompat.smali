.class public Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;
.super Ljava/lang/Object;
.source "PersonaManagerSdlCompat.java"


# static fields
.field public static final MOVE_TO_APP_TYPE_MUSIC:I = 0x3

.field public static final MOVE_TO_CONTAINER_TYPE_ECCONTAINER:I

.field public static final MOVE_TO_CONTAINER_TYPE_KNOX:I

.field public static final MOVE_TO_CONTAINER_TYPE_SECURE_FOLDER:I

.field public static final MOVE_TO_PERSONAL_TYPE_KNOX:I

.field public static final MOVE_TO_PERSONAL_TYPE_SECURE_FOLDER:I


# instance fields
.field private final manager:Landroid/os/PersonaManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8fe

    .line 14
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/PersonaManager;->MOVE_TO_CONTAINER_TYPE_ECCONTAINER:I

    :goto_0
    sput v0, Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;->MOVE_TO_CONTAINER_TYPE_ECCONTAINER:I

    .line 17
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    if-lt v0, v1, :cond_1

    sget v0, Landroid/os/PersonaManager;->MOVE_TO_CONTAINER_TYPE_KNOX:I

    :goto_1
    sput v0, Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;->MOVE_TO_CONTAINER_TYPE_KNOX:I

    .line 20
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    if-lt v0, v1, :cond_2

    sget v0, Landroid/os/PersonaManager;->MOVE_TO_CONTAINER_TYPE_SECURE_FOLDER:I

    :goto_2
    sput v0, Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;->MOVE_TO_CONTAINER_TYPE_SECURE_FOLDER:I

    .line 23
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    if-lt v0, v1, :cond_3

    sget v0, Landroid/os/PersonaManager;->MOVE_TO_PERSONAL_TYPE_SECURE_FOLDER:I

    :goto_3
    sput v0, Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;->MOVE_TO_PERSONAL_TYPE_SECURE_FOLDER:I

    .line 26
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    if-lt v0, v1, :cond_4

    sget v0, Landroid/os/PersonaManager;->MOVE_TO_PERSONAL_TYPE_KNOX:I

    :goto_4
    sput v0, Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;->MOVE_TO_PERSONAL_TYPE_KNOX:I

    return-void

    .line 14
    :cond_0
    const/16 v0, 0x3e8

    goto :goto_0

    .line 17
    :cond_1
    const/16 v0, 0x3e9

    goto :goto_1

    .line 20
    :cond_2
    const/16 v0, 0x3ea

    goto :goto_2

    .line 23
    :cond_3
    const/16 v0, 0x3eb

    goto :goto_3

    .line 26
    :cond_4
    const/16 v0, 0x3ec

    goto :goto_4
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "persona"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;->manager:Landroid/os/PersonaManager;

    .line 33
    return-void
.end method

.method public static getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-static {p0}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "req"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {p0, p1}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static isSecureFolderId(I)Z
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 48
    invoke-static {p0}, Landroid/os/PersonaManager;->isSecureFolderId(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getMoveToKnoxMenuList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;->manager:Landroid/os/PersonaManager;

    invoke-virtual {v0, p1}, Landroid/os/PersonaManager;->getMoveToKnoxMenuList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
