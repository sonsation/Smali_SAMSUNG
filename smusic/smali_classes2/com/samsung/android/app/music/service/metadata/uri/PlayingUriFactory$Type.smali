.class public Lcom/samsung/android/app/music/service/metadata/uri/PlayingUriFactory$Type;
.super Ljava/lang/Object;
.source "PlayingUriFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/metadata/uri/PlayingUriFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/metadata/uri/PlayingUriFactory$Type$Def;
    }
.end annotation


# static fields
.field public static final LOCAL:I = 0x10001

.field public static final MELON:I = 0x40002
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MILK_DRM:I = 0x80001

.field public static final MILK_MOD:I = 0x80002


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
