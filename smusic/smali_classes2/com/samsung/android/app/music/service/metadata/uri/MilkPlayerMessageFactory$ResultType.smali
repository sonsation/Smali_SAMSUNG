.class public final Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$ResultType;
.super Ljava/lang/Object;
.source "MilkPlayerMessageFactory.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/model/ServerError$ErrorCodes;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResultType"
.end annotation


# static fields
.field public static final DORMANCY_MODE_ENABLED:I = 0x32c8

.field public static final EXPLICIT_BASE:I = 0x2710

.field static final EXPLICIT_SETTING_ALLOWED_BUT_SETTING_OFF:I = 0x2717

.field static final EXPLICIT_SETTING_DISABLED:I = 0x2712

.field static final EXPLICIT_SETTING_EXPIRED_CERTIFICATION:I = 0x2716

.field static final EXPLICIT_SETTING_NOT_CERTIFIED:I = 0x2715

.field static final EXPLICIT_SETTING_UNKNOWN:I = 0x2711

.field public static final LOGIN:I = 0x2af8

.field public static final MILK_SERVER_ERROR:I = -0x3

.field public static final NETWORK_ERROR:I = -0x2

.field public static final PREVIEW_ONLY_SONG:I = 0x3a98

.field public static final RADIO_PLAY_LIMIT_OVER:I = 0x36b0

.field public static final TICKETS:I = 0x2ee0

.field public static final UNKNOWN:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
