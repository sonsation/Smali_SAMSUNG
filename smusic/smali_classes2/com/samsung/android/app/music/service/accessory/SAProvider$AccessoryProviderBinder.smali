.class public Lcom/samsung/android/app/music/service/accessory/SAProvider$AccessoryProviderBinder;
.super Landroid/os/Binder;
.source "SAProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/accessory/SAProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccessoryProviderBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/accessory/SAProvider;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/service/accessory/SAProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/accessory/SAProvider;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider$AccessoryProviderBinder;->this$0:Lcom/samsung/android/app/music/service/accessory/SAProvider;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/samsung/android/app/music/service/accessory/SAProvider;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider$AccessoryProviderBinder;->this$0:Lcom/samsung/android/app/music/service/accessory/SAProvider;

    return-object v0
.end method
