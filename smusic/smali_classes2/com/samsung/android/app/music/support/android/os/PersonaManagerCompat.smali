.class public Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;
.super Ljava/lang/Object;
.source "PersonaManagerCompat.java"


# static fields
.field public static final KNOX_CONTAINER_ID:Ljava/lang/String; = "com.sec.knox.moveto.containerId"

.field public static final KNOX_CONTAINER_TYPE:Ljava/lang/String; = "com.sec.knox.moveto.containerType"

.field public static final KNOX_NAME_B2B:Ljava/lang/String; = "com.sec.knox.moveto.name"

.field public static final MOVE_TO_APP_TYPE_MUSIC:I

.field public static final MOVE_TO_CONTAINER_TYPE_ECCONTAINER:I

.field public static final MOVE_TO_CONTAINER_TYPE_KNOX:I

.field public static final MOVE_TO_CONTAINER_TYPE_SECURE_FOLDER:I

.field public static final MOVE_TO_PERSONAL_TYPE_KNOX:I

.field public static final MOVE_TO_PERSONAL_TYPE_SECURE_FOLDER:I


# instance fields
.field private final manager:Lcom/samsung/android/knox/SemPersonaManager;

.field private final managersdl:Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 18
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x3ea

    :goto_0
    sput v0, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;->MOVE_TO_CONTAINER_TYPE_SECURE_FOLDER:I

    .line 22
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x3eb

    :goto_1
    sput v0, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;->MOVE_TO_PERSONAL_TYPE_SECURE_FOLDER:I

    .line 26
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x3ec

    :goto_2
    sput v0, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;->MOVE_TO_PERSONAL_TYPE_KNOX:I

    .line 30
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x3e8

    :goto_3
    sput v0, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;->MOVE_TO_CONTAINER_TYPE_ECCONTAINER:I

    .line 34
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_5

    const/16 v0, 0x3e9

    :goto_4
    sput v0, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;->MOVE_TO_CONTAINER_TYPE_KNOX:I

    .line 38
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    :cond_0
    sput v1, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;->MOVE_TO_APP_TYPE_MUSIC:I

    return-void

    .line 18
    :cond_1
    sget v0, Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;->MOVE_TO_CONTAINER_TYPE_SECURE_FOLDER:I

    goto :goto_0

    .line 22
    :cond_2
    sget v0, Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;->MOVE_TO_PERSONAL_TYPE_SECURE_FOLDER:I

    goto :goto_1

    .line 26
    :cond_3
    sget v0, Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;->MOVE_TO_PERSONAL_TYPE_KNOX:I

    goto :goto_2

    .line 30
    :cond_4
    sget v0, Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;->MOVE_TO_CONTAINER_TYPE_ECCONTAINER:I

    goto :goto_3

    .line 34
    :cond_5
    sget v0, Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;->MOVE_TO_CONTAINER_TYPE_KNOX:I

    goto :goto_4
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 50
    const-string v0, "persona"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;->manager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 51
    iput-object v1, p0, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;->managersdl:Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;

    .line 56
    :goto_0
    return-void

    .line 53
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;->managersdl:Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;

    .line 54
    iput-object v1, p0, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;->manager:Lcom/samsung/android/knox/SemPersonaManager;

    goto :goto_0
.end method

.method public static getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 76
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;->getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public static getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "req"    # Ljava/lang/String;

    .prologue
    .line 67
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-static {p0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public static isSecureFolderId(I)Z
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 83
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 84
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    .line 86
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;->isSecureFolderId(I)Z

    move-result v0

    goto :goto_0
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
    .line 59
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;->manager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getMoveToKnoxMenuList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;->managersdl:Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;->getMoveToKnoxMenuList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method
