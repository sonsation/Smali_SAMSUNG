.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$INotificationUpdaterDelegate;
.super Ljava/lang/Object;
.source "NotificationUpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "INotificationUpdaterDelegate"
.end annotation


# virtual methods
.method public abstract buildNotification(Landroid/content/Context;Landroid/app/Notification$Builder;Z)Landroid/app/Notification;
.end method

.method public abstract registerNotification(ILandroid/app/Notification;)V
.end method

.method public abstract unregisterNotification(Z)V
.end method
