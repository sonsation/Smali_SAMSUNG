.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
.super Ljava/lang/Object;
.source "PlayingItem.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem$Priority;,
        Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem$ERROR_URI;
    }
.end annotation


# virtual methods
.method public abstract getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
.end method

.method public abstract getSourceId()Ljava/lang/String;
.end method
