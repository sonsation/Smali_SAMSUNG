.class public Lcom/sec/android/app/camera/feature/ReflectionFeature$ReflectionFeatureArray;
.super Ljava/lang/Object;
.source "ReflectionFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/feature/ReflectionFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReflectionFeatureArray"
.end annotation


# instance fields
.field public mIsChanged:Z

.field public mObjectName:Ljava/lang/String;

.field public mObjectType:Ljava/lang/String;

.field public mObjectValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/feature/ReflectionFeature$ReflectionFeatureArray;->mObjectType:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/camera/feature/ReflectionFeature$ReflectionFeatureArray;->mObjectName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/camera/feature/ReflectionFeature$ReflectionFeatureArray;->mObjectValue:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/sec/android/app/camera/feature/ReflectionFeature$ReflectionFeatureArray;->mIsChanged:Z

    return-void
.end method
