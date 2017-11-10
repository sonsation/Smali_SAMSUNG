.class public final enum Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;
.super Ljava/lang/Enum;
.source "RecordingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/RecordingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "RecordingState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

.field public static final enum IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

.field public static final enum RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

.field public static final enum RECORD_PAUSING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

.field public static final enum RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

.field public static final enum RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    const-string v1, "RECORD_STARTING"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    const-string v1, "RECORDING"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    const-string v1, "RECORD_PAUSING"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_PAUSING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    const-string v1, "RECORD_STOPPING"

    invoke-direct {v0, v1, v6}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_PAUSING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->$VALUES:[Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->$VALUES:[Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    return-object v0
.end method
