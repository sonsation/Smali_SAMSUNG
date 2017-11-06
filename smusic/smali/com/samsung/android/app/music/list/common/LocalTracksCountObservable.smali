.class public interface abstract Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;
.super Ljava/lang/Object;
.source "LocalTracksCountObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;
    }
.end annotation


# static fields
.field public static final LOADER_ID_LOCAL_TRACKS_COUNT:I = 0x309


# virtual methods
.method public abstract getLocalTracksCount()I
.end method

.method public abstract setOnLocalTracksCountChangedListener(Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;)V
.end method

.method public abstract updateLocalTrackCount()V
.end method
