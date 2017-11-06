.class public final Lcom/samsung/android/app/music/provider/sync/MusicSyncService$SyncEvent;
.super Ljava/lang/Object;
.source "MusicSyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/sync/MusicSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/sync/MusicSyncService$SyncEvent$Def;
    }
.end annotation


# static fields
.field public static final CHECK:I = 0x1

.field public static final FAVORITE:I = 0xe

.field public static final FORCE_MDRM:I = 0xd

.field public static final INIT_PROCESS:I = 0x2

.field public static final LOCAL:I = 0x4

.field public static final LOCAL_ADD_DELETE_ONLY:I = 0x3

.field public static final MOST_PLAYED:I = 0xb

.field public static final PLAYLIST:I = 0x6

.field public static final PLAYLIST_SYNC_DOWN:I = 0x8

.field static final PLAYLIST_SYNC_UP:I = 0x7

.field public static final RECENTLY_PLAYED:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
