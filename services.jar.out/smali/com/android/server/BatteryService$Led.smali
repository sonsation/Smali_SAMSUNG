.class final Lcom/android/server/BatteryService$Led;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Led"
.end annotation


# instance fields
.field private final mBatteryFullARGB:I

.field private final mBatteryLedOff:I

.field private final mBatteryLedOn:I

.field private final mBatteryLight:Lcom/android/server/lights/Light;

.field private final mBatteryLowARGB:I

.field private final mBatteryMediumARGB:I

.field private mLedStatus:I

.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/BatteryService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "lights"    # Lcom/android/server/lights/LightsManager;

    .prologue
    .line 2309
    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2307
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    .line 2310
    const/4 v0, 0x5

    invoke-virtual {p3, v0}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    .line 2312
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2313
    const v1, 0x10e0056

    .line 2312
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    .line 2314
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2315
    const v1, 0x10e0057

    .line 2314
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    .line 2316
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2317
    const v1, 0x10e0058

    .line 2316
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    .line 2318
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2319
    const v1, 0x10e0059

    .line 2318
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    .line 2320
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2321
    const v1, 0x10e005a

    .line 2320
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    .line 2309
    return-void
.end method


# virtual methods
.method public updateLightsLocked()V
    .locals 9

    .prologue
    const/16 v8, 0xe

    const/16 v7, 0xd

    const/16 v6, 0xb

    const/16 v5, 0xa

    const/4 v4, 0x0

    .line 2328
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-get7(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v3

    iget v1, v3, Landroid/os/BatteryProperties;->batteryLevel:I

    .line 2329
    .local v1, "level":I
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-get7(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v3

    iget v2, v3, Landroid/os/BatteryProperties;->batteryStatus:I

    .line 2330
    .local v2, "status":I
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-get7(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v3

    iget v0, v3, Landroid/os/BatteryProperties;->batteryHealth:I

    .line 2357
    .local v0, "health":I
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-get8(Lcom/android/server/BatteryService;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2358
    return-void

    .line 2360
    :cond_0
    const/4 v3, 0x4

    if-ne v3, v2, :cond_4

    .line 2361
    const/4 v3, 0x3

    if-eq v3, v0, :cond_1

    .line 2362
    const/4 v3, 0x6

    if-ne v3, v0, :cond_3

    .line 2365
    :cond_1
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-get16(Lcom/android/server/BatteryService;)Z

    move-result v3

    .line 2360
    if-eqz v3, :cond_4

    .line 2366
    iget v3, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    if-eq v6, v3, :cond_8

    .line 2367
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v3, v4, v6, v4, v4}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    .line 2368
    iput v6, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    .line 2369
    invoke-static {}, Lcom/android/server/BatteryService;->-get1()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "turn on LED for not charging"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2327
    :cond_2
    :goto_0
    return-void

    .line 2363
    :cond_3
    const/4 v3, 0x7

    if-eq v3, v0, :cond_1

    .line 2364
    const/16 v3, 0x8

    if-eq v3, v0, :cond_1

    .line 2373
    :cond_4
    const/4 v3, 0x2

    if-ne v3, v2, :cond_5

    .line 2374
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-get28(Lcom/android/server/BatteryService;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2382
    :cond_5
    const/4 v3, 0x5

    if-ne v3, v2, :cond_6

    .line 2383
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-get28(Lcom/android/server/BatteryService;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2391
    :cond_6
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-get20(Lcom/android/server/BatteryService;)I

    move-result v3

    if-gt v1, v3, :cond_7

    .line 2392
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-get28(Lcom/android/server/BatteryService;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2400
    :cond_7
    iget v3, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    if-eqz v3, :cond_2

    .line 2401
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v3}, Lcom/android/server/lights/Light;->turnOff()V

    .line 2402
    iput v4, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    .line 2403
    invoke-static {}, Lcom/android/server/BatteryService;->-get1()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "turn off LED"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2371
    :cond_8
    invoke-static {}, Lcom/android/server/BatteryService;->-get1()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "stay LED for not charging"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2374
    :cond_9
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-get16(Lcom/android/server/BatteryService;)Z

    move-result v3

    .line 2373
    if-eqz v3, :cond_5

    .line 2375
    iget v3, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    if-eq v5, v3, :cond_a

    .line 2376
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v3, v4, v5, v4, v4}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    .line 2377
    iput v5, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    .line 2378
    invoke-static {}, Lcom/android/server/BatteryService;->-get1()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "turn on LED for charging"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2380
    :cond_a
    invoke-static {}, Lcom/android/server/BatteryService;->-get1()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "stay LED for charging"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2383
    :cond_b
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-get16(Lcom/android/server/BatteryService;)Z

    move-result v3

    .line 2382
    if-eqz v3, :cond_6

    .line 2384
    iget v3, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    if-eq v8, v3, :cond_c

    .line 2385
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v3, v4, v8, v4, v4}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    .line 2386
    iput v8, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    .line 2387
    invoke-static {}, Lcom/android/server/BatteryService;->-get1()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "turn on LED for fully charged"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2389
    :cond_c
    invoke-static {}, Lcom/android/server/BatteryService;->-get1()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "stay LED for fully charged"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2392
    :cond_d
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-get17(Lcom/android/server/BatteryService;)Z

    move-result v3

    .line 2391
    if-eqz v3, :cond_7

    .line 2393
    iget v3, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    if-eq v7, v3, :cond_e

    .line 2394
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v3, v4, v7, v4, v4}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    .line 2395
    iput v7, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    .line 2396
    invoke-static {}, Lcom/android/server/BatteryService;->-get1()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "turn on LED for low battery"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2398
    :cond_e
    invoke-static {}, Lcom/android/server/BatteryService;->-get1()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "stay LED for low battery"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
