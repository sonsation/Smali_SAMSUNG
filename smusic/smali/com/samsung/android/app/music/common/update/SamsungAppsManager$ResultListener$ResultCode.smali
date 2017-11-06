.class public interface abstract annotation Lcom/samsung/android/app/music/common/update/SamsungAppsManager$ResultListener$ResultCode;
.super Ljava/lang/Object;
.source "SamsungAppsManager.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/update/SamsungAppsManager$ResultListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ResultCode"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final NO_UPDATE:I = 0x0

.field public static final UPDATE_FORCE:I = 0x2

.field public static final UPDATE_OPTIONAL:I = 0x1
