.class final Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel$1;
.super Ljava/lang/Object;
.source "GalaxyViewRotate.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;)I
    .locals 4
    .param p1, "from"    # Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;
    .param p2, "to"    # Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;

    .prologue
    const/4 v3, 0x0

    .line 465
    iget v1, p2, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->tz:F

    iget v2, p1, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->tz:F

    sub-float v0, v1, v2

    .line 466
    .local v0, "result":F
    cmpl-float v1, v0, v3

    if-nez v1, :cond_0

    .line 467
    const/4 v1, 0x0

    return v1

    .line 468
    :cond_0
    cmpg-float v1, v0, v3

    if-gez v1, :cond_1

    .line 469
    const/4 v1, 0x1

    return v1

    .line 471
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "from"    # Ljava/lang/Object;
    .param p2, "to"    # Ljava/lang/Object;

    .prologue
    .line 464
    check-cast p1, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;

    .end local p1    # "from":Ljava/lang/Object;
    check-cast p2, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;

    .end local p2    # "to":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel$1;->compare(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;)I

    move-result v0

    return v0
.end method
