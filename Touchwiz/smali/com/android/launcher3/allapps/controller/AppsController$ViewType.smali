.class public final enum Lcom/android/launcher3/allapps/controller/AppsController$ViewType;
.super Ljava/lang/Enum;
.source "AppsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/controller/AppsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher3/allapps/controller/AppsController$ViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

.field public static final enum ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

.field public static final enum CUSTOM_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 174
    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    const-string v1, "CUSTOM_GRID"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->CUSTOM_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    .line 175
    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    const-string v1, "ALPHABETIC_GRID"

    invoke-direct {v0, v1, v3}, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    .line 173
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    sget-object v1, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->CUSTOM_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->$VALUES:[Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 173
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/allapps/controller/AppsController$ViewType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 173
    const-class v0, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher3/allapps/controller/AppsController$ViewType;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->$VALUES:[Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    invoke-virtual {v0}, [Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    return-object v0
.end method
