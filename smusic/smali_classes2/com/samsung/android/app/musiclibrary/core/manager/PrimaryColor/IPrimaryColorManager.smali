.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;
.super Ljava/lang/Object;
.source "IPrimaryColorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;
    }
.end annotation


# virtual methods
.method public abstract addPrimaryColorChangedListener(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V
.end method

.method public abstract getLastPrimaryColor()I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end method

.method public abstract getPrimaryColor(Landroid/net/Uri;JLcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V
.end method

.method public abstract removePrimaryColorChangedListener(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V
.end method

.method public abstract setStaticThumbnailId(J)V
.end method

.method public abstract setStaticThumbnailId(Landroid/net/Uri;J)V
.end method
