.class public interface abstract Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;
.super Ljava/lang/Object;
.source "DrmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPlayReadyListener"
.end annotation


# static fields
.field public static final PLAYREADY_ACQUIRE_RIGHTS_FAILED:I = 0x3

.field public static final PLAYREADY_ACQUIRE_RIGHTS_START:I = 0x1

.field public static final PLAYREADY_ACQUIRE_RIGHTS_SUCCESS:I = 0x2


# virtual methods
.method public abstract onAcquireStatus(Ljava/lang/String;I)V
.end method
